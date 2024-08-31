#!/bin/bash
set -e

if [ ! -f Gemfile ]; then
  echo "NOTE: hmm, I don't see a Gemfile so I don't think there's a jekyll site here"
  exit 1
fi

bundle install --retry 5 --jobs 20

exec "$@"