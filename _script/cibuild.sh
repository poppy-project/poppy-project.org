#!/usr/bin/env bash
set -e # halt script on error

# uncomment url in jekyll config
sed 's/# url:/url:/g' '_config.yml' > _config.yml.new
mv _config.yml.new _config.yml

bundle exec jekyll build --destination _site/poppy-project.org
bundle exec htmlproofer ./_site --assume-extension --allow-hash-href --check-html --url-ignore "/flowers.inria.fr/"

rm -rf .git
