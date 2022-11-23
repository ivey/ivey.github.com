<main>
  <div class="h-card" rel="author">
    <img class="u-photo" alt="My profile photo" src="me.jpg" />
    <h1>
      <span class="p-name">Michael D. Ivey</span>
      <span class="p-nickname">(Gweezlebur)</span>
    </h1>

    <p class="p-note">
      Software engineer. Video game maker. RPG enthusiast. Wrangler of cats. Girl Scout.
    </p>

    <ul class="card-links">
      <li><a class="u-uid u-url" href="https://gweezlebur.com">https://gweezlebur.com</a></li>
      <li><a class="u-email" href="mailto:ivey@gweezlebur.com" rel="me">ivey@gweezlebur.com</a></li>
    </ul>
  </div>

  <h1>Stuff</h1>
  <ul class="posts">
    <li><a href="micro.html">microblog</a></li>
    {% for post in site.posts limit:1 %}
      <li><span>{{ post.date | date_to_string }}</span> &raquo; <a href="{{ post.url }}">{{ post.title }}</a></li>
    {% endfor %}
    <li><a href="/pooh.html"><i>Tao of Pooh</i> quotes page I've been dragging around since 1999</a></li>
    <li><a href="/poem.html"><i>Poem for Jen</i>, the origin of Gweezlebur</a></li>
    <li><a rel="pgpkey" href="BA7ECBB6D4F40AEC02F38B05D65AFD1028BBA035.asc">new GPG key for 2022</a></li>
    <li><a href="posts.html">More posts...</a></li>
  </ul>

  <h1>Elsewhere</h1>
  <ul>
    <li><b>Riot Gweezlebur#LOR</b> on Legends of Runeterra, League of Legends, Valorant, other Riot games</li>
    <li><a href="https://tilde.zone/@ivey" rel="me">Fediverse - @ivey@tilde.zone</a></li>
    <li><a href="https://discord.gg/ZcUq4Hu" rel="discord">My Discord Server</a></li>
    <li><a href="https://github.com/ivey" rel="me">Github - @ivey</a></li>
    <li><a href="https://twitter.com/ivey" rel="me">Twitter - @ivey</a></li>
    <li><a href="mailto:ivey@tilde.club" rel="me">ivey@tilde.club - alt email</a></li>
    <li><a href="mailto:michael.ivey@google.com" rel="me">michael.ivey@gmail.com - Google</a></li>
    <li><a href="https://mltshp.com/user/ivey" rel="me">mltshp - ivey</a></li>
    <li><a href="https://cohost.org/ivey" rel="me">cohost - ivey</a></li>
    <li><a href="https://twitch.tv/gweezlebur" rel="me">Twitch - Gweezlebur</a></li>
    <li><a href="https://steamcommunity.com/id/gweezlebur/" rel="me">Steam - gweezlebur</a></li>
    <li><a href="https://robertsspaceindustries.com/citizens/Gweezlebur" rel="me">Star Citizen - Gweezlebur</a></li>
    <li><a href="https://www.instagram.com/ivey/" rel="me">Instagram</a></li>
    <li><a href="https://www.facebook.com/michaelivey/" rel="me">Facebook</a></li>
    <li><a href="https://www.linkedin.com/in/michaelivey/" rel="me">LinkedIn</a></li>
    <li><a href="https://reddit.com/u/ivey" rel="me">Reddit - ivey</a></li>
  </ul>
</main>
