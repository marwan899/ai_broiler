#!/usr/bin/env bash
set -euo pipefail
PORT="${1:-8000}"
cat <<MSG
Serving broiler management dashboards:
- Grower portal:   http://localhost:${PORT}/index.html
- Admin console:   http://localhost:${PORT}/admin.html
Press Ctrl+C لإيقاف الخادم.
MSG
python3 -m http.server "$PORT"
