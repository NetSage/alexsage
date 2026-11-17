#!/usr/bin/env bash
# Fallback deploy: same build + rsync as the GitHub Actions workflow.
# Usage: NFSN_USER=yourusername bash deploy.sh
set -euo pipefail
cd "$(dirname "$0")"

want=$(sed -n 's/^[[:space:]]*ZOLA_VERSION:[[:space:]]*"\{0,1\}\([0-9.]*\)"\{0,1\}.*/\1/p' .github/workflows/deploy.yml | head -n1)
have=$(zola --version | awk '{print $2}')
if [ "$want" != "$have" ]; then
  echo "Local zola is $have but workflow pins $want. Install $want first." >&2
  exit 1
fi

: "${NFSN_USER:?Set NFSN_USER to the SSH username from the NFSN site panel}"
NFSN_HOST="${NFSN_HOST:-ssh.nyc1.nearlyfreespeech.net}"

zola build
rsync -rlz --delete --exclude='/.well-known/' public/ "$NFSN_USER@$NFSN_HOST:/home/public/"
