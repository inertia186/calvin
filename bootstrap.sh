#!/bin/bash

cd $APP_ROOT

bundle install
bundle exec jekyll server \
  --host 0.0.0.0 \
  --port 4000 \
  --no-watch \
  --source $APP_ROOT \
  --destination $APP_ROOT/_site \
  --verbose \
  --trace
