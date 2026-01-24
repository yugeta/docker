#!/bin/sh
set -u
npx postcss "/app/postcss/**/style.css" \
  --base /app/postcss/ \
  --dir /app/postcss/ \
  --ext .min.css \
  --watch \
  --config /postcss \
  --ignore "**/*.bak/**"
