#!/usr/bin/env bash
set -euo pipefail
PORT="${1:-8000}"

if ! command -v python3 >/dev/null 2>&1; then
  echo "يتطلب هذا السكربت توفر python3 في PATH." >&2
  exit 1
fi

cat <<MSG
Serving broiler management dashboards:
- Grower portal:   http://localhost:${PORT}/index.html
- Admin console:   http://localhost:${PORT}/admin.html
اضغط Ctrl+C لإيقاف الخادم.
MSG

cleanup() {
  printf '\nتم إيقاف الخادم.\n'
}
trap cleanup INT TERM

python3 -m http.server --bind 0.0.0.0 "$PORT"
