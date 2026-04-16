#!/bin/sh
set -e

# Railway mounts volumes at /app/data owned by root. Re-assert ownership
# so the librecrawl user (UID 1000) can read/write the user DB.
chown -R librecrawl:librecrawl /app/data

exec gosu librecrawl "$@"
