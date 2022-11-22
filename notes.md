<h1>Microblog</h1>
<ul class="posts">
  {% for post in site.notes %}
    <li><a href="{{ post.url }}"><span>{{ post.date | date_to_string }}</span></a> &raquo; {{ post.excerpt }}</a></li>
  {% endfor %}
</ul>
