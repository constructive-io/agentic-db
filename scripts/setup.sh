#!/usr/bin/env bash
# setup.sh — Bootstrap the local development environment for agentic-db
#
# Prerequisites:
#   - Docker running
#   - pgpm installed globally (npm install -g pgpm@4.7.4)
#   - pnpm installed
#   - constructive-db repo cloned alongside this repo (for metaschema deploy)
#
# This script:
#   1. Starts Docker via pgpm with postgres-plus image (includes pg_search for BM25)
#   2. Creates a fresh test database
#   3. Bootstraps admin users (creates authenticated/administrator roles)
#   4. Deploys metaschema + metaschema-generators from constructive-db
#
# Usage:
#   ./scripts/setup.sh [DATABASE_NAME]
#
# All pgpm flags are specified to avoid interactive prompts.

set -euo pipefail

DATABASE_NAME="${1:-agentic_db_test}"

echo ""
echo "=== agentic-db: Environment Setup ==="
echo ""
echo "  Database: ${DATABASE_NAME}"
echo ""

# 1. Ensure pgpm env is loaded
eval "$(pgpm env)"

# 2. Start Docker services (postgres-plus + ollama)
echo "--- Step 1: Ensuring Docker services are running ---"
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
REPO_DIR="$(cd "${SCRIPT_DIR}/.." && pwd)"
if [ -f "${REPO_DIR}/docker-compose.yml" ]; then
  docker compose -f "${REPO_DIR}/docker-compose.yml" up -d postgres
else
  pgpm docker start --image docker.io/constructiveio/postgres-plus:18 --recreate 2>/dev/null || pgpm docker start 2>/dev/null || true
fi

# 3. Create the database
echo ""
echo "--- Step 2: Creating database '${DATABASE_NAME}' ---"
createdb "${DATABASE_NAME}" 2>/dev/null || true

# 4. Bootstrap admin users (must happen before metaschema deploy — creates authenticated role)
echo ""
echo "--- Step 3: Bootstrapping admin users ---"
pgpm admin-users bootstrap --database "${DATABASE_NAME}" --yes
pgpm admin-users add --database "${DATABASE_NAME}" --test --yes

# 5. Deploy metaschema from constructive-db (must be cloned alongside this repo)
echo ""
echo "--- Step 4: Deploying metaschema + metaschema-generators ---"
CDB_DIR="$(cd "$(dirname "$0")/../../constructive-db" 2>/dev/null && pwd)" || CDB_DIR=""
if [ -z "${CDB_DIR}" ] || [ ! -d "${CDB_DIR}" ]; then
  echo "ERROR: constructive-db repo not found at ../constructive-db"
  echo "Clone it: git clone git@github.com:constructive-io/constructive-db.git ../constructive-db"
  exit 1
fi
cd "${CDB_DIR}"
pgpm deploy --package metaschema --database "${DATABASE_NAME}" --yes
pgpm deploy --package metaschema-generators --database "${DATABASE_NAME}" --yes

echo ""
echo "=== Setup complete! ==="
echo ""
echo "Next steps:"
echo "  1. Run ./scripts/create-db.sh to create an agentic-db database"
echo "  2. Run ./scripts/provision.sh to provision schemas"
echo "  3. Run ./scripts/export.sh to export artifacts"
echo ""
