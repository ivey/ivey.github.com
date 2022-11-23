<h1>Microblog</h1>
<ul class="posts">
  {% for post in site.micro reversed limit:100 %}
    <li><a href="{{ post.url }}"><span>{{ post.date | date_to_string }}</span></a> &raquo; {{ post.excerpt }}</li>
  {% endfor %}
</ul>
