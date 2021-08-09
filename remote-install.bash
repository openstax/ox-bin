#!/usr/bin/env bash

repo_url="https://github.com/openstax/ox-bin.git"

if [ -z "$(command -v git)" ]; then
  echo "git is required to install ox-bin" > /dev/stderr;
  exit 1;
fi

git clone $repo_url ~/.ox-bin
~/.ox-bin/bin/ox register
