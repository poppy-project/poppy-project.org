---
layout: single-column-cover
lang: fr
title: "Contact"
description: "Contactez-nous pour obtenir de plus amples informations"
permalink: /fr/contact/
role: contact
in_nav: false
published: true
cover_title: "Vous avez une question à propos du projet Poppy ou des robots Poppy ?"
---

## Premièrement...

Vous pouvez jeter un œil à la section [Getting started](http://docs.poppy-project.org/en/getting-started/) de la documentation ou chercher sur les [forums de discussion](https://forum.poppy-project.org/).

Vous n'avez toujours pas trouvé de réponse ? N'hesitez pas à lancer une nouvelle discussion !

<div class="text-center clish">
  <a href="https://forum.poppy-project.org/" class="button success large">Lancer une nouvelle discussion</a>
</div>

<hr>

## Contact

Sinon vous pouvez toujours nous contacter directement par mail...

<div class="row">
  <form action="https://formspree.io/{{ site.data.social.email }}" method="post" class="columns">
    <input type="text" name="_gotcha" class="nodisp">
    <input type="text" name="_format" value="plain" class="nodisp">

    <input type="hidden" name="_subject" value="New message from Poppy contact form">
    <input type="hidden" name="_next" value="{{ site.baseurl }}/{{ page.lang }}/contact/thank-you">

    <label>
      Nom
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
