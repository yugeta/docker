# #!/bin/sh
# set -u
npx esbuild /app/**/main.js \
  --bundle \
  --minify \
  --format=esm \
  --outbase=/app/ \
  --outdir=/app/ \
  --entry-names=[dir]/main.min \
  --external:*.bak \
  --external:bak/* \
  --log-level=error \
  --watch

## package.json のscriptsに記述