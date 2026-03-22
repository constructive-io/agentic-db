#!/usr/bin/env bash
# setup.sh — Bootstrap the local development environment for agentic-db
#
# Prerequisites:
#   - Docker running
#   - pgpm installed globally (npm install -g pgpm@4.7.4)
#   - pnpm installed
#
# This script:
#   1. Starts Docker via pgpm (if not already running)
#   2. Creates a fresh test database
#   3. Deploys the metaschema package
#   4. Bootstraps admin users
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

# 2. Start Docker if needed
echo "--- Step 1: Ensuring Docker/pgpm is running ---"
pgpm docker start 2>/dev/null || true

# 3. Create the database (drops if exists)
echo ""
echo "--- Step 2: Creating database '${DATABASE_NAME}' ---"
pgpm deploy --createdb --database "${DATABASE_NAME}" --yes || true

# 4. Deploy the metaschema-generators package (contains data_search.sql etc.)
echo ""
echo "--- Step 3: Deploying metaschema-generators ---"
pgpm deploy --package metaschema-generators --database "${DATABASE_NAME}" --yes

# 5. Bootstrap admin users
echo ""
echo "--- Step 4: Bootstrapping admin users ---"
pgpm admin-users bootstrap --database "${DATABASE_NAME}" --yes
pgpm admin-users add --database "${DATABASE_NAME}" --test --yes

echo ""
echo "=== Setup complete! ==="
echo ""
echo "Next steps:"
echo "  1. Run ./scripts/create-db.sh to create an agentic-db database"
echo "  2. Run ./scripts/provision.sh to provision schemas"
echo "  3. Run ./scripts/export.sh to export artifacts"
echo ""
