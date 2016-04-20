#!/usr/bin/env bash
set -e # halt script on error

# uncomment url in jekyll config
sed 's/# url:/url:/g' '_config.yml' > _config.yml.new
mv _config.yml.new _config.yml
sed 's/# baseurl:/baseurl:/g' '_config.yml' > _config.yml.new
mv _config.yml.new _config.yml

bundle exec jekyll build
bundle exec htmlproofer ./_site --assume-extension --allow-hash-href

rm -rf .git
