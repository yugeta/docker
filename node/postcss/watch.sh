#!/bin/sh
set -u
npx postcss "/app/**/style.css" \
  --base /app/ \
  --dir /app/ \
  --ext .min.css \
  --watch \
  --config /node/postcss/postcss.config.js \
  --ignore "**/*.bak/**"
