#!/usr/bin/env bash

set -e # halt script on error

config='_config.yml'
config_backup="$config.bak"

cp $config $config_backup

# Set specific build settings in jekyll config
cat >> $config <<EOF
analytics: true
url: http://poppy-project.github.io
sass:
  style: compressed
EOF

bundle exec jekyll build --destination _site/poppy-project.org

mv $config_backup $config
