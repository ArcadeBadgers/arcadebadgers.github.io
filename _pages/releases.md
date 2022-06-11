---
layout: page
title: Releases
permalink: /releases/
categories: main
---

{% assign releases = site.releases | sort: 'published' | reverse %}
{% for release in releases %}
{% if true == forloop.last %} <!-- Last is the "Arcade Badgers Company Release" so ignore it -->
{% else %}
<div class="release">
<h1>
{% assign day = release.published | date: "%-d"  %}
{% case day %}
  {% when '1' or '21' or '31' %}{{ day }}st
  {% when '2' or '22' %}{{ day }}nd
  {% when '3' or '23' %}{{ day }}rd
  {% else %}{{ day }}th
{% endcase %}
{{ release.published | date: "%B %Y" }}
</h1>
<a href="{{ release.url }} "><h2><img src="{{ release.banner }}" alt="{{ release.title }}"></h2></a>
</div>
{% endif %}
{% endfor %}