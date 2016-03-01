---
layout: page
lang: fr
title: À propos
permalink: /fr/a-propos/
role: about
in_nav: true
---

# À propos

Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et __dolore magna aliqua__. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. _Duis aute irure dolor_ in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.

## Exemple h2

### Exemple h3

#### Exemple h4

##### Exemple h5

###### Exemple h6

Exemple de liste ordonnée :

1. Premier élément
1. Deuxième élément
1. Troisième élément
1. Quatrième élément

Exemple de liste non ordonnée :

* Deuxième élément
* Premier élément
* Quatrième élément
* Troisième élément

Depuis un terminal, essayez de taper la commande `ls` pour voir les répertoires.

Un peu de code _JavaScript_ :

{% highlight javascript linenos %}
/**
 * Says hello
 *
 * @return {Boolean}
 */
function hello() {
  alert('Une fonction JavaScript');

  return true;
}

hello();
{% endhighlight %}

Un peu de code __Python__ :

{% highlight python linenos %}
from numpy import sum
from functools import partial

from poppy.creatures import AbstractPoppyCreature
from poppy.creatures.ik import IKChain

from .primitives.jump import Jump
from .primitives.dance import Dance
from .primitives.face_tracking import FaceTracking
from .primitives.tracking_feedback import TrackingFeedback
from .primitives.postures import (BasePosture, RestPosture,
                                  CuriousPosture, TetrisPosture,
                                  SafePowerUp)


class PoppyErgoJr(AbstractPoppyCreature):
    @classmethod
    def setup(cls, robot):
        robot._primitive_manager._filter = partial(sum, axis=0)

        c = IKChain.from_poppy_creature(robot,
                                        motors=robot.motors,
                                        passiv=[],
                                        tip=[0, 0, -0.07])

        robot.chain = c

        robot.attach_primitive(SafePowerUp(robot), 'safe_power_up')

        robot.attach_primitive(Dance(robot), 'dance')
        robot.attach_primitive(Jump(robot), 'jump')

        robot.attach_primitive(BasePosture(robot, 2.), 'base_posture')
        robot.attach_primitive(RestPosture(robot, 2.), 'rest_posture')
        robot.attach_primitive(CuriousPosture(robot, 2.), 'curious_posture')
        robot.attach_primitive(TetrisPosture(robot, 2.), 'tetris_posture')

        if not robot.simulated and hasattr(robot, 'marker_detector'):
            robot.attach_primitive(TrackingFeedback(robot, 25.),
                                   'tracking_feedback')
            robot.tracking_feedback.start()

        for m in robot.motors:
            m.pid = (4, 2, 0)
            m.torque_limit = 70.
            m.led = 'off'

        if not robot.simulated and hasattr(robot, 'face_tracking'):
            robot.attach_primitive(FaceTracking(robot, 10,
                                                robot.face_detector),
                                   'face_tracking')
{% endhighlight %}

Comme l'a dit quelqu'un :

> There is one kind of robber whom the law does not strike at,
> and who steals what is most precious to men: time.
> 
> This was mean.
