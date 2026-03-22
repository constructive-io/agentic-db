#!/usr/bin/env bash
# create-db.sh — Create a new agentic-db database via database_provision_module
#
# This uses a direct SQL INSERT into database_provision_module (faster than
# going through the cnc server, which can cause lock contention).
#
# Prerequisites:
#   - ./scripts/setup.sh has been run (database exists, admin users bootstrapped)
#   - No cnc server running against this database (avoids lock contention)
#
# Usage:
#   ./scripts/create-db.sh [DATABASE_NAME] [DB_NAME]
#
# All pgpm flags are specified to avoid interactive prompts.

set -euo pipefail

DATABASE_NAME="${1:-agentic_db_test}"
DB_NAME="${2:-agentic_db}"

echo ""
echo "=== agentic-db: Create Database ==="
echo ""
echo "  Target DB:     ${DATABASE_NAME}"
echo "  Database name: ${DB_NAME}"
echo ""

# Ensure pgpm env is loaded
eval "$(pgpm env)"

# IMPORTANT: Make sure no cnc server is running against this database
# to avoid lock contention on the database_provision_module table.

echo "--- Creating database via database_provision_module INSERT ---"
echo "  (This typically takes 30-60 seconds)"
echo ""

DATABASE_ID=$(psql -d "${DATABASE_NAME}" -tAc "
  SET ROLE administrator;
  INSERT INTO metaschema_modules_public.database_provision_module (
    database_name,
    subdomain,
    domain,
    modules,
    bootstrap_user
  ) VALUES (
    '${DB_NAME}',
    '${DB_NAME}',
    'localhost',
    '{all}',
    true
  )
  RETURNING database_id;
")

if [ -z "${DATABASE_ID}" ]; then
  echo "ERROR: Failed to create database"
  exit 1
fi

echo "  Database ID: ${DATABASE_ID}"

# Write to .env files
REPO_ROOT="$(cd "$(dirname "$0")/.." && pwd)"

for ENV_FILE in "${REPO_ROOT}/.env" "${REPO_ROOT}/packages/provision/.env"; do
  if [ -f "${ENV_FILE}" ]; then
    # Update existing entries
    sed -i "s/^DATABASE_ID=.*/DATABASE_ID=${DATABASE_ID}/" "${ENV_FILE}"
    sed -i "s/^DATABASE_NAME=.*/DATABASE_NAME=${DB_NAME}/" "${ENV_FILE}"
  else
    cat > "${ENV_FILE}" <<EOF
DATABASE_ID=${DATABASE_ID}
DATABASE_NAME=${DB_NAME}
ACCESS_TOKEN=dummy-admin-token
API_ENDPOINT=http://localhost:3001/graphql
AUTH_ENDPOINT=http://localhost:3001/graphql
EOF
  fi
done

echo ""
echo "=== Database created! ==="
echo ""
echo "  DATABASE_ID=${DATABASE_ID}"
echo "  .env files updated"
echo ""
echo "Next steps:"
echo "  1. Start cnc server: eval \"\$(pgpm env)\" && PGDATABASE=${DATABASE_NAME} PORT=3001 API_IS_PUBLIC=false npx ts-node src/run.ts"
echo "  2. Run ./scripts/provision.sh to provision schemas"
echo ""
