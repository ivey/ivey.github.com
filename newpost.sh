#!/usr/bin/env bash

filename="_posts/"
title="New Post"
dateargs=""

while getopts ":dt" arg; do
  case $arg in
    d)
      filename="drafts/"
      ;;
    t)
      dateargs=" --date=tomorrow"
  esac
done
shift $((OPTIND-1))

if [ $# -gt 0 ]
then
  title="$@"
  filename+=`date $dateargs +%Y-%m-%d-`
  filename+=`echo "$@" | tr '[:upper:]' '[:lower:]' | sed -e 's/ /-/g'`.md
else
  filename+=`date $dateargs +%Y-%m-%d-new-post.md`
fi

if ! [ -f $filename ]; then
  cat > $filename <<EOF
---
layout: post
title: $title
description: A description
---
EOF
fi

vi $filename
git add $filename
