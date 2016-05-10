---
layout: single-column-cover
lang: en
title: "Contact"
description: "Get in touch with us for more information"
permalink: /en/contact/
role: contact
in_nav: false
published: true
cover_title: "You have a question about the Poppy project or Poppy robots ?"
---

## First...

You can check the [Getting started)](http://docs.poppy-project.org/en/getting-started/) section of the documentation or search the [forum](https://forum.poppy-project.org/).

Still did not find the answer? Start a new topic!

<div class="text-center clish">
  <a href="https://forum.poppy-project.org/" class="button success large">Start a new topic</a>
</div>

<hr>

## Contact

Or contact us directly via e-mail…

<div class="row">
  <form action="https://formspree.io/{{ site.data.social.email }}" method="post" class="columns">
    <input type="text" name="_gotcha" class="nodisp">
    <input type="text" name="_format" value="plain" class="nodisp">

    <input type="hidden" name="_subject" value="New message from Poppy contact form">
    <input type="hidden" name="_next" value="{{ site.baseurl }}/{{ page.lang }}/contact/thank-you">

    <label>
      Name
      <input type="text" name="name">
    </label>
    <label>
      Email
      <input type="email" name="email">
    </label>
    <label>
      Message
      <textarea name="message" rows="5"></textarea>
    </label>

    <button type="submit" class="button">Send</button>
  </form>
</div>
