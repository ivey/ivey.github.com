<h1>Microblog</h1>
<p>Stuff I post ends up here, and then gets synced to <a href="https://micro.blog/gweezlebur">micro.blog</a> which then
  publishes it out to <a href="https://twitter.com/ivey">Twitter</a>,
  <a href="https://tilde.zone/@ivey">Mastodon</a> and <a href="https://ivey.tumblr.com">tumblr</a>. If you follow me
  any of those places, you'll see all of this there.</p>

<ul class="posts">
  {% for post in site.micro reversed limit:100 %}
    <li><a href="{{ post.url }}"><span>{{ post.date | date_to_string }}</span></a> &raquo; {{ post.excerpt }}</li>
  {% endfor %}
</ul>
