---
layout: single-column-cover
lang: en
title: "How to make the Ergo Jr robot work on a Raspberry Pi 3"
description: "Changes between Raspberry Pi 2 and 3 to the serial port management prevents the current ergo-jr code from working on a Rpi3. This post will show you how to fix this"
cover_title: "How to make the Ergo Jr robot work on a Raspberry Pi 3"
cover_image: "/assets/img/covers/rpi3-lego.jpg"
cover_size: small
cover_gradient: true
published: true
categories:
  - en
---

_Updated on 2016, October 3rd  
After some thorough tests, we found that the Ergo Jr robot was working fine on a Raspberry Pi 3 but was very slow when performing movements. The short answer: we were using a software UART, less performant than the hardware one (which is used for bluethooth by default). You can read the whole explanation from the article called ["Configuring The GPIO Serial Port On Raspbian Jessie Including Pi 3"][spellfoundry] on Spellfoundry._

We've received [feedback](https://forum.poppy-project.org/t/factory-reset-problem/2651/3) from users who had trouble using a Raspberry Pi 3 for their Ergo Jr robot.

Basically, some changes between Raspberry Pi 2 and 3 to the serial interface prevent the current Ergo Jr code from working on a Raspberry Pi 3.
Good news, solving this is rather easy, and we prepared a working image for the Raspberry Pi 3 available for [download][new-image]. Make sure to backup your Jupyter notebooks or Snap! projects before [flashing][flash-sd] your SD card!

If you want to upgrade your existing robot or want to switch from a Raspberry Pi 2 to a Raspberry Pi 3, the provided instructions below show how to do this.  
You should note that depending on how one has customized their configuration, the following instructions may not work. Should that happen, please share your problem by posting in the forum under the [support category][support-link].

1.  Make sure the official `raspi-config` is installed:

    ```bash
    sudo apt-get update && sudo apt-get install -y raspi-config
    ```

2.  Launch the utility `sudo raspi-config`, then enable the camera and disable the `Advanced Options > Disable shell and kernel messages on the serial connection` option.

3.  Make sure the `/boot/config.txt` file contains the `enable_uart=1` **and** `dtoverlay=pi3-miniuart-bt` lines, or add these otherwise.

4.  <del>Update <em>poppy_ergo_jr</em> python dependency so it looks for <code>/dev/ttyS0<code> instead of <code>/dev/ttyAMA0<code> (this is what makes communication stall):</del>  
    If you updated <em>poppy_ergo_jr</em> with the deleted statement above, you need to revert it:

    ```bash
    sed -i -- 's/ttyS0/ttyAMA0/g' /home/poppy/miniconda/lib/python2.7/site-packages/poppy_ergo_jr/configuration/poppy_ergo_jr.json
    ```

5. Restart the Raspberry Pi 3, and enjoy robotics!

<hr>

*Photo credit: [desmodex](https://www.flickr.com/photos/desmodex/26347969306)*

[new-image]: https://github.com/poppy-project/poppy-ergo-jr/releases/download/1.0.0-gm/2016-09-30-poppy-ergo-jr.img.zip
[support-link]: https://forum.poppy-project.org/t/making-the-ergo-jr-work-on-a-raspberry-pi-3/2688
[flash-sd]: https://docs.poppy-project.org/en/installation/burn-an-image-file.html#write-the-operating-system-image-to-the-sd-card
[spellfoundry]: http://spellfoundry.com/2016/05/29/configuring-gpio-serial-port-raspbian-jessie-including-pi-3/
