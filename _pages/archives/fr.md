---
layout: single-column
lang: fr
title: "Blog"
description: "Tous les articles du blog du projet Poppy"
permalink: /fr/archives/
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
