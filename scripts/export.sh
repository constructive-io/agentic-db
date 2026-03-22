#!/usr/bin/env bash
# export.sh — Export all artifacts from the provisioned database
#
# Runs the full 4-stage export pipeline:
#   1. pgpm export  — SQL modules (packages/agentic-db/, packages/agentic-db-services/)
#   2. Schema export — GraphQL SDL (sdk/schemas/agentic-db.graphql)
#   3. SDK generate  — TypeScript ORM client (sdk/sdk/src/generated/)
#   4. CLI generate  — CLI commands (sdk/cli/generated/)
#
# Prerequisites:
#   - ./scripts/provision.sh has been run successfully
#   - cnc server running on port 3001 (private API, API_IS_PUBLIC=false)
#   - pgpm env loaded (eval "$(pgpm env)")
#
# Usage:
#   ./scripts/export.sh [DATABASE_NAME]
#
# Environment:
#   DATABASE_ID      — UUID of the provisioned database (read from .env if not set)
#   PGDATABASE       — Postgres database name (default: from arg or agentic_db_test)
#   CNC_PORT         — cnc server port (default: 3001)
#   CNC_HOST         — cnc server host (default: localhost)
#   APP_SCHEMATA     — App-public schema name (auto-detected if not set)

set -euo pipefail

REPO_ROOT="$(cd "$(dirname "$0")/.." && pwd)"
DATABASE_NAME="${1:-agentic_db_test}"

# Load .env if present
if [ -f "${REPO_ROOT}/.env" ]; then
  set -a
  source "${REPO_ROOT}/.env"
  set +a
fi

# Ensure pgpm env is loaded
eval "$(pgpm env)"

export PGDATABASE="${PGDATABASE:-${DATABASE_NAME}}"
export CNC_PORT="${CNC_PORT:-3001}"
export CNC_HOST="${CNC_HOST:-localhost}"

if [ -z "${DATABASE_ID:-}" ]; then
  echo "ERROR: DATABASE_ID not set. Run ./scripts/create-db.sh first or set DATABASE_ID env var."
  exit 1
fi

# Auto-detect APP_SCHEMATA if not set
if [ -z "${APP_SCHEMATA:-}" ]; then
  APP_SCHEMATA=$(psql -d "${PGDATABASE}" -tAc "
    SELECT schema_name FROM metaschema_public.schema
    WHERE database_id = '${DATABASE_ID}' AND name = 'app_public'
    LIMIT 1;
  ")
  if [ -z "${APP_SCHEMATA}" ]; then
    echo "ERROR: Could not auto-detect APP_SCHEMATA for database ${DATABASE_ID}"
    exit 1
  fi
fi
export APP_SCHEMATA

echo ""
echo "=== agentic-db: Export Pipeline ==="
echo ""
echo "  PGDATABASE:   ${PGDATABASE}"
echo "  DATABASE_ID:  ${DATABASE_ID}"
echo "  APP_SCHEMATA: ${APP_SCHEMATA}"
echo "  CNC_PORT:     ${CNC_PORT}"
echo ""

# Stage 1: pgpm export
echo "--- Stage 1/4: pgpm export ---"
cd "${REPO_ROOT}"
pnpm run export:pgpm
echo ""

# Stage 2: Schema export (GraphQL SDL)
echo "--- Stage 2/4: Schema export (GraphQL SDL) ---"
pnpm run export:schema
echo ""

# Stage 3: SDK generation
echo "--- Stage 3/4: SDK generation ---"
pnpm run generate:sdk
echo ""

# Stage 4: CLI generation
echo "--- Stage 4/4: CLI generation ---"
pnpm run generate:cli
echo ""

echo "=== Export complete! ==="
echo ""
echo "Artifacts:"
echo "  packages/agentic-db/          — pgpm SQL module"
echo "  packages/agentic-db-services/ — pgpm services module"
echo "  sdk/schemas/agentic-db.graphql — GraphQL SDL ($(wc -l < sdk/schemas/agentic-db.graphql) lines)"
echo "  sdk/sdk/src/generated/        — TypeScript ORM SDK"
echo "  sdk/cli/generated/            — CLI commands"
echo ""
