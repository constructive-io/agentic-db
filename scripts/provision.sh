#!/usr/bin/env bash
# provision.sh — Run blueprint provision for agentic-db
#
# Provisions all 7 schema modules (CRM, Agent, Runtime, Projects,
# Codebase, Life OS, Autonomy) + cross-relations using the blueprint engine.
#
# Prerequisites:
#   - ./scripts/setup.sh has been run
#   - ./scripts/create-db.sh has been run
#   - cnc server running on port 3001 (private API, API_IS_PUBLIC=false)
#
# Usage:
#   ./scripts/provision.sh
#
# Environment:
#   Uses docker.io/constructiveio/postgres-plus:18 which includes pg_search (BM25)

set -euo pipefail

REPO_ROOT="$(cd "$(dirname "$0")/.." && pwd)"

echo ""
echo "=== agentic-db: Blueprint Provision ==="
echo ""


cd "${REPO_ROOT}/packages/provision"
npx ts-node src/provision.ts

echo ""
echo "=== Provision complete! ==="
echo ""
echo "Next steps:"
echo "  1. Run ./scripts/export.sh to export all artifacts"
echo ""
