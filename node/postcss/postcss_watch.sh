#!/bin/sh
set -e

# postcss がなければインストール
if ! npx --no-install postcss -v >/dev/null 2>&1; then
  echo "postcss not found. installing..."
  npm install --no-save postcss postcss-cli postcss-import cssnano autoprefixer
fi

npx postcss "/app/**/style.css" \
  --base /app/ \
  --dir /app/ \
  --ext .min.css \
  --watch \
  --config /postcss \
  --ignore "**/*.bak/**"
