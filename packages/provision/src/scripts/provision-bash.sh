#!/bin/bash
set -e

# Configuration
# This script mirrors the logic of packages/provision/src/provision.ts using the CLI
DATABASE_NAME="agent-os-bash-$(date +%s)"
ADMIN_EMAIL="admin+bash$(date +%s)@agent-os.local"
ADMIN_PASSWORD="password"

echo "🚀 Agent-OS Database Provisioning (Bash)"
echo "   Database: $DATABASE_NAME"

# 1. Sign Up (Platform)
echo ""
echo "🔐 Signing up..."
# CLI auth signup creates a context
# NOTE: The generated CLI targets the Tenant API by default (based on schema).
# But for PROVISIONING, we need to target the PLATFORM API first to create the database.
# The CLI generated from `agent-os.graphql` (Tenant Schema) might NOT have `createDatabase`.
# We need to check if `databaseProvisionModule` is in the generated CLI.

# Let's check available commands from the help output we just saw.
# It lists `contact`, `task`, etc.
# It does NOT list `database-provision-module` or `secure-table-provision`.
# This is because the schema we exported was the TENANT schema (`app-public-agent-os...`).
# The tenant schema does NOT expose provisioning modules (usually).

# CONCLUSION:
# The CLI generated from the TENANT schema cannot provision databases.
# We need a CLI generated from the PLATFORM schema (`metaschema_public`, `services_public`).
# But we don't have that schema exported here.

# Ideally, we should have a `constructive-cli` (platform CLI) for this.
# But we are testing if *this* generated CLI can do it.
# Answer: No, because it lacks the mutations.

# However, we CAN use the CLI to manipulate data *after* provisioning.
# So this script will fail at Step 2 (Create Database).

# Let's document this limitation.

echo "❌ ABORT: The generated CLI is bound to the Tenant Schema."
echo "   It lacks 'createDatabase' mutations."
echo "   Provisioning requires a Platform-level CLI or the TS SDK."
exit 1
