---
layout: single-column-cover
lang: fr
title: "Comment faire fonctionner Ergo Jr sur Raspberry pi 3"
description: "Des changements entre les Raspberry pi 2 et 3 empêchent le bon fonctionnement du code de Ergo Jr. Cet article vous montre comment résoudre ce problème"
cover_title: "Comment faire fonctionner Ergo Jr sur Raspberry pi 3"
cover_image: "/assets/img/covers/rpi3-lego.jpg"
cover_gradient: true
cover_size: small
published: true
categories:
  - fr
---

Des utilisateurs des forums nous ont signalé qu'ils avaient rencontré [des problèmes en voulant utiliser une Raspberry pi 3](https://forum.poppy-project.org/t/factory-reset-problem/2651/3).

Des changements entre les Raspberry pi 2 sur l'interface série empêchent le code de l'Ergo Jr de fonctionner sur une Raspberry pi 3.
La bonne nouvelle est que c'est quelque chose de plutôt simple à réparer, et une image prête à être utilisée avec une Raspberry pi 3 est [téléchargeable][rpi3-image].

Si vous ne souhaitez que mettre à jour le code présent sur votre robot ou que vous ne faites qu'un changement d'une Raspberry pi 2 vers une Raspberry pi 3, les instructions qui suivent vous aideront à le faire.  
Notez cependant qu'en fonction des modifications que vous avez apportées à votre robot, les instructions peuvent ne pas fonctionner correctement.

1.  Installez le paquet `raspi-config` officel:

    ```bash
    sudo apt-get update && sudo apt-get install -y raspi-config
    ```

2.  Exécutez l'utilitaire `sudo raspi-config`, puis activez la caméra et désactivez l'option `Advanced Options > Disable shell and kernel messages on the serial connection`.

3.  Vérifiez que le fichier `/boot/config.txt` contient la ligne `enable_uart=1`, ou ajoutez la si besoin.

4.  Faites en sorte que la dépendance python *poppy_ergo_jr* mentionne `/dev/ttyS0` à la place de `/dev/ttyAMA0` (c'est précisément ce qui pose problème et bloque la communication):

    ```bash
    sed -i -- 's/ttyAMA0/ttyS0/g' /home/poppy/miniconda/lib/python2.7/site-packages/poppy_ergo_jr/configuration/poppy_ergo_jr.json
    ```

5. Redémarrez la Raspberry Pi, et amusez-vous bien !

[rpi3-image]: https://github.com/poppy-project/poppy-ergo-jr/releases/download/1.0.0-gm/poppy-ergo-jr-2016-09-08-rpi3.img.zip
