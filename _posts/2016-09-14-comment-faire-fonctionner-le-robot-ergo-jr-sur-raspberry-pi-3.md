---
layout: single-column-cover
lang: fr
title: "Comment faire fonctionner le robot Ergo Jr sur Raspberry Pi 3"
description: "Des changements entre les Raspberry Pi 2 et 3 empêchent le bon fonctionnement du code de l'Ergo Jr. Cet article vous montre comment résoudre ce problème"
cover_title: "Comment faire fonctionner le robot Ergo Jr sur Raspberry Pi 3"
cover_image: "/assets/img/covers/rpi3-lego.jpg"
cover_gradient: true
cover_size: small
published: true
categories:
  - fr
---

_Mise à jour le 3 octobre 2016  
Après des tests plus approfondis, nous avons remarqué que le robot Ergo Jr fonctionnnait bien sur Rapberri Pi 3 mais que ses mouvements étaient très saccadés. La réponse courte est que nous utilisions le port mini uart pour la communication, mais que celui-ci repose sur la fréquence du CPU et n'est pas adapté à l'usage que nous en faisons (si le CPU ralenti, tous les mouvements ralentissent). Vous pouvez lire l'explication complète dans l'article [« Configuring The GPIO Serial Port On Raspbian Jessie Including Pi 3 »][spellfoundry] du site Spellfoundry._

Des utilisateurs des forums nous [ont signalé](https://forum.poppy-project.org/t/factory-reset-problem/2651/3) qu'ils avaient rencontré des problèmes en voulant utiliser une Raspberry Pi 3 pour leur robot Ergo Jr.

Des changements entre les Raspberry Pi 2 sur l'interface série empêchent le code de l'Ergo Jr de fonctionner sur une Raspberry Pi 3.
La bonne nouvelle est que c'est quelque chose de plutôt simple à réparer, et une image prête à être utilisée avec une Raspberry Pi 3 est [téléchargeable][new-image]. N'oubliez pas de sauvegarder vos projets Snap! ainsi que vos notebooks Jupyter avant de [flasher][flash-sd] la carte SD !

Si vous ne souhaitez que mettre à jour le code présent sur votre robot ou que vous ne faites qu'un changement d'une Raspberry Pi 2 vers une Raspberry Pi 3, les instructions qui suivent vous aideront à le faire.  
Notez cependant qu'en fonction des modifications que vous avez apportées à votre robot, les instructions peuvent ne pas fonctionner correctement. Si tel était le cas, n'hésitez-pas à demander de l'aide [dans la catégorie support des forums][support-link].

1.  Installez le paquet `raspi-config` officiel:

    ```bash
    sudo apt-get update && sudo apt-get install -y raspi-config
    ```

2.  Exécutez l'utilitaire `sudo raspi-config`, puis activez la caméra et désactivez l'option `Advanced Options > Disable shell and kernel messages on the serial connection`.

3.  Vérifiez que le fichier `/boot/config.txt` contient les lignes `enable_uart=1` **et** `dtoverlay=pi3-miniuart-bt`, ou ajoutez-les si besoin.

4.  <del>Faites en sorte que la dépendance python <em>poppy_ergo_jr<em> mentionne <code>/dev/ttyS0</code> à la place de <code>/dev/ttyAMA0</code> (c'est précisément ce qui pose problème et bloque la communication):</del>
    Si vous avez déjà fait la modification barrée ci-dessus, il faut la défaire :

    ```bash
    sed -i -- 's/ttyS0/ttyAMA0/g' /home/poppy/miniconda/lib/python2.7/site-packages/poppy_ergo_jr/configuration/poppy_ergo_jr.json
    ```

5. Redémarrez la Raspberry Pi 3, et amusez-vous bien !

<hr>

*Crédit photo : [desmodex](https://www.flickr.com/photos/desmodex/26347969306)*

[new-image]: https://github.com/poppy-project/poppy-ergo-jr/releases/download/1.0.0-gm/2016-09-30-poppy-ergo-jr.img.zip
[support-link]: https://forum.poppy-project.org/t/making-the-ergo-jr-work-on-a-raspberry-pi-3/2688
[flash-sd]: https://docs.poppy-project.org/en/installation/burn-an-image-file.html#write-the-operating-system-image-to-the-sd-card
[spellfoundry]: http://spellfoundry.com/2016/05/29/configuring-gpio-serial-port-raspbian-jessie-including-pi-3/
