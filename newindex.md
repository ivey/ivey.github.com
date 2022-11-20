<!-- Reference for representative h-card properties: https://microformats.org/wiki/h-card -->
<main class="h-card" rel="author">
  <img class="u-photo" alt="My profile photo" src="me.jpg" />
  <h1>
    <span class="p-name">Michael D. Ivey</span>
  </h1>

    <p class="p-note">
      Software engineer. Video game maker. RPG enthusiast. Wrangler of cats. Girl Scout.
    </p>

- <a href="/elsewhere/">Find me elsewhere</a>
- <a href="/archive.html">old blog archive 2007-2011</a>
- <a href="/pooh.html"><i>Tao of Pooh</i> quotes page I've been dragging around since 1999</a>
- <a href="/poem.html"><i>Poem for Jen</i>, the origin of Gweezlebur</a>
- <a rel="pgpkey" href="BA7ECBB6D4F40AEC02F38B05D65AFD1028BBA035.asc">new GPG key for 2022</a>
- More to come soon?

  <h1>Recent Posts</h1>
  <ul class="posts">
    {% for post in site.posts limit:5 %}
      <li><span>{{ post.date | date_to_string }}</span> &raquo; <a href="{{ post.url }}">{{ post.title }}</a></li>
    {% endfor %}
    <li><a href="posts.html">More...</a></li>
  </ul>

    <ul style="display:none;">
      <li><a class="u-uid u-url" href="https://gweezlebur.com">web</a></li>
      <li><a class="u-url" href="https://tilde.zone/@ivey" rel="me">fediverse - @ivey@tilde.zone</a></li>
      <li><a class="u-url" href="https://github.com/ivey" rel="me">github - @ivey</a></li>
      <li><a class="u-url" href="https://twitter.com/ivey" rel="me">twitter - @ivey</a></li>
    </ul>
</main>
