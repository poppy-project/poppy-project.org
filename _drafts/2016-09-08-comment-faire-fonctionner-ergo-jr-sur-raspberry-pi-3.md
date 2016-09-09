---
layout: single-column-cover
lang: fr
title: "Comment faire fonctionner Ergo Jr sur Raspberry Pi 3"
description: "Des changements entre les Raspberry Pi 2 et 3 empêchent le bon fonctionnement du code de l'Ergo Jr. Cet article vous montre comment résoudre ce problème"
cover_title: "Comment faire fonctionner Ergo Jr sur Raspberry Pi 3"
cover_image: "/assets/img/covers/rpi3-lego.jpg"
cover_gradient: true
cover_size: small
published: true
categories:
  - fr
---

Des utilisateurs des forums nous [ont signalé](https://forum.poppy-project.org/t/factory-reset-problem/2651/3) qu'ils avaient rencontré des problèmes en voulant utiliser une Raspberry Pi 3 pour leur robot Ergo Jr.

Des changements entre les Raspberry Pi 2 sur l'interface série empêchent le code de l'Ergo Jr de fonctionner sur une Raspberry Pi 3.
La bonne nouvelle est que c'est quelque chose de plutôt simple à réparer, et une image prête à être utilisée avec une Raspberry Pi 3 est [téléchargeable][new-image]. N'oubliez pas de sauvegarder vos projets Snap! ainsi que vos notebooks Jupyter !

Si vous ne souhaitez que mettre à jour le code présent sur votre robot ou que vous ne faites qu'un changement d'une Raspberry Pi 2 vers une Raspberry Pi 3, les instructions qui suivent vous aideront à le faire.  
Notez cependant qu'en fonction des modifications que vous avez apportées à votre robot, les instructions peuvent ne pas fonctionner correctement. Si tel était le cas, n'hésitez-pas à demander de l'aide [dans la catégorie support des forums][support-link].

1.  Installez le paquet `raspi-config` officiel:

    ```bash
    sudo apt-get update && sudo apt-get install -y raspi-config
    ```

2.  Exécutez l'utilitaire `sudo raspi-config`, puis activez la caméra et désactivez l'option `Advanced Options > Disable shell and kernel messages on the serial connection`.

3.  Vérifiez que le fichier `/boot/config.txt` contient la ligne `enable_uart=1`, ou ajoutez la si besoin.

4.  Faites en sorte que la dépendance python *poppy_ergo_jr* mentionne `/dev/ttyS0` à la place de `/dev/ttyAMA0` (c'est précisément ce qui pose problème et bloque la communication):

    ```bash
    sed -i -- 's/ttyAMA0/ttyS0/g' /home/poppy/miniconda/lib/python2.7/site-packages/poppy_ergo_jr/configuration/poppy_ergo_jr.json
    ```

5. Redémarrez la Raspberry Pi 3, et amusez-vous bien !

<hr>

*Crédit photo : [desmodex](https://www.flickr.com/photos/desmodex/26347969306)*

[new-image]: https://github.com/poppy-project/poppy-ergo-jr/releases/download/1.0.0-gm/2016-09-09-poppy-ergo-jr.img.zip
[support-link]: https://forum.poppy-project.org/c/support
