#!/usr/bin/env bash

filename="_posts/"
title="New Post"
if [ $# -gt 0 ]
then
  title="$@"
  filename+=`date +%Y-%m-%d-`
  filename+=`echo "$@" | tr '[:upper:]' '[:lower:]' | sed -e 's/ /-/g'`.md
else
  filename+=`date +%Y-%m-%d-new-post.md`
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
