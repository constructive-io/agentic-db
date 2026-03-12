#!/usr/bin/env bash
set -euo pipefail

export PGPASSWORD=password
SOURCE_DB="avengers_restore"
TARGET_DB="constructive"

# Load current DB configuration from .env
ENV_FILE="$(dirname "$0")/../../../../.env"
if [ -f "$ENV_FILE" ]; then
    export $(grep -v '^#' "$ENV_FILE" | xargs)
fi

TARGET_SCHEMA="${DATABASE_NAME}-app-public"

# Automatically find the admin entity ID for this specific DB prefix
ENTITY_ID=$(psql -h localhost -U postgres -d $TARGET_DB -t -A -c "SELECT id FROM \"${DATABASE_NAME}-users-public\".users LIMIT 1;")

if [ -z "$ENTITY_ID" ]; then
    echo "❌ Could not find admin user for schema ${DATABASE_NAME}."
    exit 1
fi

echo "Targeting Schema: $TARGET_SCHEMA"
echo "Targeting Admin ID: $ENTITY_ID"
echo "-----------------------------------"

echo ">>> Migrating contact_companies..."
psql -h localhost -U postgres -d $SOURCE_DB -t -A -c "
SELECT format(
  'INSERT INTO \"$TARGET_SCHEMA\".contact_companies (id, entity_id, contact_id, company_id) VALUES (%L, ''$ENTITY_ID'', %L, %L) ON CONFLICT (id) DO NOTHING;',
  id, contact_id, company_id
)
FROM crm.contact_companies;
" | psql -h localhost -U postgres -d $TARGET_DB > /dev/null
echo "contact_companies done."

echo ">>> Migrating contact_events..."
psql -h localhost -U postgres -d $SOURCE_DB -t -A -c "
SELECT format(
  'INSERT INTO \"$TARGET_SCHEMA\".contact_events (id, entity_id, contact_id, event_id) VALUES (%L, ''$ENTITY_ID'', %L, %L) ON CONFLICT (id) DO NOTHING;',
  id, contact_id, event_id
)
FROM crm.contact_events;
" | psql -h localhost -U postgres -d $TARGET_DB > /dev/null
echo "contact_events done."

echo ">>> Migrating event_venues..."
psql -h localhost -U postgres -d $SOURCE_DB -t -A -c "
SELECT format(
  'INSERT INTO \"$TARGET_SCHEMA\".event_venues (id, entity_id, event_id, venue_id) VALUES (%L, ''$ENTITY_ID'', %L, %L) ON CONFLICT (id) DO NOTHING;',
  id, event_id, venue_id
)
FROM crm.event_venues;
" | psql -h localhost -U postgres -d $TARGET_DB > /dev/null
echo "event_venues done."
