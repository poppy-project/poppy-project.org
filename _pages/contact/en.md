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


## First ...

You can check the [FAQ (aka Getting started)](https://forum.poppy-project.org/t/getting-started-with-poppy-project/362) or search on the [Poppy Forum](https://forum.poppy-project.org/), it’s Super Effective!

Still did not find the answer ? Please, start a new topic! It’s free !

<div class="text-center">
<a href="https://forum.poppy-project.org/" class="button success large ">Start a new topic !</a>
</div>

<hr />

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
