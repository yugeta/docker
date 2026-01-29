#!/bin/sh
set -u
npx postcss "/app/**/style.css" \
  --base /app/ \
  --dir /app/ \
  --ext .min.css \
  --watch \
  --config /node/postcss/postcss.config.js \
  --ignore "**/*.bak/**" \
  > postcss.log 2>&1

  ## package.json のscriptsに記述