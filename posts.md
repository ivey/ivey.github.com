<h1>Posts</h1>
<ul class="posts">
  {% for post in site.posts %}
    <li><span>{{ post.date | date_to_string }}</span> &raquo; <a href="{{ post.url }}">{{ post.title }}</a></li>
  {% endfor %}
    <li><a href="/archive.html">old blog archive 2007-2011</a></li>
</ul>
