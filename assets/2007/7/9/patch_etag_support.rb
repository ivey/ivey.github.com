# monkey patch #6158
# http://dev.rubyonrails.org/changeset/6158
# for automatic etag support
# patched by Michael Ivey <ivey@gweezlebur.com>

require 'md5'
module ActionController
  class AbstractRequest
    def headers
      @env
    end
  end
  class Base
    protected
    def render_text(text = nil, status = nil, append_response = false) #:nodoc:
      @performed_render = true

      response.headers['Status'] = interpret_status(status || DEFAULT_RENDER_STATUS_CODE)

      if append_response
        response.body ||= ''
        response.body << text
      else
        response.body = text
      end
      
      if response.headers['Status'] == "200 OK" && response.body.size > 0
        response.headers['Etag'] ||= "\"#{MD5.new(text).to_s}\""
        if request.headers['HTTP_IF_NONE_MATCH'] == response.headers['Etag']
          response.headers['Status'] = "304 Not Modified"
          response.body = ''
        end
      end
    end
  end
end
