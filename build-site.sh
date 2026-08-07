#!/usr/bin/env bash
# Assemble the deployable site into _site/ — v2 ONLY.
#
# The v1 site at the repo root is never deployed: it still contains template
# fiction (ledgerly.html, placeholder bio, fake employers) that must not be
# published under a real name. See README "Two versions".
#
# Usage:  bash build-site.sh
# Env:    SITE_URL (optional) — e.g. https://lananguyen.com
#         When set, og:image/social URLs are made absolute so link previews
#         work in Slack/LinkedIn/iMessage.
set -euo pipefail
cd "$(dirname "$0")"

rm -rf _site
mkdir -p _site

cp v2/*.html v2/styles.css v2/script.js v2/figures.css v2/figures.js v2/figures-fonts.css _site/
cp -r v2/morsel-docs _site/morsel-docs
cp -r v2/tenet-proto _site/tenet-proto
cp -r v2/morsel-proto _site/morsel-proto
cp -r images _site/images
cp favicon.png _site/

# v2 pages reference assets one level up; at the deployed root they are local
perl -pi -e 's|\.\./images/|images/|g; s|\.\./favicon\.png|favicon.png|g' _site/*.html
# morsel-docs pages sit one level deeper
perl -pi -e 's|\.\./\.\./images/|../images/|g; s|\.\./\.\./favicon\.png|../favicon.png|g' _site/morsel-docs/*.html

# absolute social-preview URLs once a domain exists
if [ -n "${SITE_URL:-}" ]; then
  base="${SITE_URL%/}"
  perl -pi -e "s|content=\"images/|content=\"${base}/images/|g" _site/*.html
fi

printf 'User-agent: *\nAllow: /\n' > _site/robots.txt
touch _site/.nojekyll

echo "built _site: $(find _site -type f | wc -l) files, $(du -sh _site | cut -f1)"
