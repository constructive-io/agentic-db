#!/bin/bash
set -e

##############################################################################
# provision-bash.sh — Bash sibling of provision.ts
#
# Does the same thing as provision.ts but using the @constructive-sdk/cli (csdk).
# Built to document the experience of CLI-driven provisioning vs TypeScript SDK.
#
# Reference: ../provision.ts (the canonical TypeScript version)
##############################################################################

# Config
# Use absolute path to built CLI
CLI_PATH="$HOME/Constructive/constructive-io/constructive/sdk/constructive-cli/dist/cli.js"
ADMIN_EMAIL="admin+$(date +%s)@agent-os.local"
ADMIN_PASSWORD="Constructive@123!"
DB_NAME="agent-os-$(date +%s)"

# Helpers
function csdk() {
  node "$CLI_PATH" "$@"
}

echo "🚀 Agent-OS Bash Provisioning"
echo "   Database: $DB_NAME"
echo "   Email:    $ADMIN_EMAIL"

# 1. Sign Up (Auth Context)
echo ""
echo "🔌 Setting up Auth context..."
csdk context create --name auth-local --endpoint "http://auth.localhost:3000/graphql" >/dev/null 2>&1 || true
csdk context use --name auth-local >/dev/null

echo "🔐 Signing up..."
# Auth schema 'signUp' mutation takes 'input: SignUpInput!'.
INPUT_JSON="{\"email\": \"$ADMIN_EMAIL\", \"password\": \"$ADMIN_PASSWORD\"}"
# Request result.userId and result.accessToken via --select
SIGNUP_RES=$(csdk auth sign-up --input "$INPUT_JSON" --select "result.userId,result.accessToken")

# Extract accessToken and userId (JSON format)
ACCESS_TOKEN=$(echo "$SIGNUP_RES" | grep -o '"accessToken": "[^"]*"' | head -1 | cut -d'"' -f4)
USER_ID=$(echo "$SIGNUP_RES" | grep -o '"userId": "[^"]*"' | head -1 | cut -d'"' -f4)

if [ -z "$ACCESS_TOKEN" ]; then
  echo "❌ Sign up failed or token not found. Output:"
  echo "$SIGNUP_RES"
  exit 1
fi

echo "✅ Signed up (userId: $USER_ID)"


# 2. Provision Database (API Context)
echo ""
echo "🔌 Setting up API context..."
csdk context create --name api-local --endpoint "http://api.localhost:3000/graphql" >/dev/null 2>&1 || true
csdk context use --name api-local >/dev/null

# Set token
echo "🔑 Setting authentication token..."
csdk context set-token --name api-local --token "$ACCESS_TOKEN" >/dev/null

echo "🗄️  Provisioning database..."

# Using database-provision-module create command.
# Providing values for ALL prompted fields to avoid interactive prompts.
# modules: '["all"]' is passed as a stringified JSON array because CLI treats it as string.
PROVISION_RES=$(csdk public database-provision-module create \
  --databaseName "$DB_NAME" \
  --ownerId "$USER_ID" \
  --subdomain "$DB_NAME" \
  --domain "localhost" \
  --modules '["all"]' \
  --options '{}' \
  --bootstrapUser "true" \
  --status "pending" \
  --errorMessage "" \
  --databaseId "" \
  --completedAt "" \
  --select "id,databaseName,status,errorMessage,databaseId")

echo "   Response: $PROVISION_RES"

# Extract database ID (UUID)
# Note: The databaseId field in response is what we want (the provisioned DB's ID), 
# distinct from the 'id' of the provision module record.
DB_ID=$(echo "$PROVISION_RES" | grep -o '"databaseId": "[^"]*"' | head -1 | cut -d'"' -f4)
STATUS=$(echo "$PROVISION_RES" | grep -o '"status": "[^"]*"' | head -1 | cut -d'"' -f4)
ERR_MSG=$(echo "$PROVISION_RES" | grep -o '"errorMessage": "[^"]*"' | head -1 | cut -d'"' -f4)

if [ -z "$DB_ID" ]; then
   echo "❌ Database ID missing."
   echo "   Status: $STATUS"
   echo "   Error: $ERR_MSG"
   exit 1
fi

echo "✅ Provisioned: $DB_NAME"
echo "   ID: $DB_ID"

echo ""
echo "🎉 Complete! Add to .env:"
echo "   DATABASE_NAME=$DB_NAME"
echo "   DATABASE_ID=$DB_ID"
echo "   ACCESS_TOKEN=$ACCESS_TOKEN"
