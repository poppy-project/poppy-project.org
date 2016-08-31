#!/usr/bin/env bash

set -e

config='_config.yml'
config_backup="$config.bak"

cp $config $config_backup

# Set specific build settings in jekyll config
cat >> $config <<EOF
analytics: true
url: http://pollen-robotics.com
sass:
  style: compressed
EOF

bundle exec jekyll build

mv $config_backup $config
