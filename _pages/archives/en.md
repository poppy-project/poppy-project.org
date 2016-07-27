---
layout: single-column
lang: en
title: "Blog"
description: "Poppy project blog posts"
permalink: /en/archives/
role: archives
in_nav: true
published: true
---

# {{ site.data.i18n.archives.title[page.lang] }}

{% for post in site.categories[page.lang] %}

{% include separator.html %}

## {{ post.title }}

{{ post.date | date_to_string }}
[&raquo; {{ site.data.i18n.archives.read_more[page.lang] }}]({{ site.baseurl }}{{ post.url }})

{% endfor %}
