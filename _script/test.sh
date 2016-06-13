#!/usr/bin/env bash

bundle exec htmlproofer ./_site --assume-extension --allow-hash-href --check-html --url-ignore "/flowers.inria.fr/" --url-ignore "/artsciences.u-bordeaux.fr/"
