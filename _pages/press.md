---
layout: page
title: Press
permalink: /press/
categories: main
---

<h2>Overview</h2>
<div class="overview">
Arcade Badgers Limited was officially founded on the 30th April 2013, by Steven and Claire Campbell.
When not at their respective day jobs, they turn into Badgers at night, work off the kitchen table, and conspire to produce games with a touch of arcade flavour.

<br />
<br />

<h1>Quick Details</h1>
<ul>
<li>Founded: April 2013 in Dundee, Scotland</li>
<li>Email: <a href="mailto:contact@arcadebadgers.co.uk" alt="contact@arcadebadgers.co.uk">contact@arcadebadgers.co.uk</a></li>
<li>Twitter: <a href="https://twitter.com/ArcadeBadgers" alt="Arcade Badgers">@ArcadeBadgers</a></li>
<li>Twitter: <a href="https://twitter.com/stuckieGAMEZ" alt="Steven Campbell - stuckieGAMEZ">@stuckieGAMEZ</a></li>
<li>Web: <a href="http://www.arcadebadgers.co.uk" alt="Arcade Badgers Website">www.arcadebadgers.co.uk</a></li>
<li>Registered Address:<br />Arcade Badgers Limited<br />10 Braes of Gray Road<br />Dundee<br />Scotland<br />DD2 5FQ</li>
</ul>
</div>

<br />

<!-- Now we have the actual releases in last to first -->
<h2>Releases</h2>
<div class="grid-container">
{% assign releases = site.releases | sort: 'published' %}
{% for release in releases %}
{% if false == forloop.first %}
<div class="grid-item">
<h3>
{% assign day = release.published | date: "%-d"  %}
{% case day %}
  {% when '1' or '21' or '31' %}{{ day }}st
  {% when '2' or '22' %}{{ day }}nd
  {% when '3' or '23' %}{{ day }}rd
  {% else %}{{ day }}th
{% endcase %}
{{ release.published | date: "%B %Y" }}
</h3>
<a href="{{ release.url }} "><img src="{{ release.banner }}" alt="{{ release.title }}"></a><br />
<h5>{{ release.one-liner }}</h5>
</div>
{% endif %}
{% endfor %}
</div>

<br />
<br />

<!-- First "release" is the Arcade Badgers story, so show it separate... -->
{% for release in releases %}
{% if true == forloop.first %}
<div class="main">
<h2>{{ release.title }}</h2>
{{ release.content }}
{% endif %}
{% endfor %}
</div>
