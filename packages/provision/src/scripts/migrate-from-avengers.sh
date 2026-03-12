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

echo ">>> Migrating Contacts..."
psql -h localhost -U postgres -d $SOURCE_DB -t -A -c "
SELECT format(
  'INSERT INTO \"$TARGET_SCHEMA\".contacts (id, entity_id, first_name, last_name, email, phone, headline, bio, location, embedding) VALUES (%L, ''$ENTITY_ID'', %L, %L, %L, %L, %L, %L, %L, %L::vector) ON CONFLICT (id) DO NOTHING;',
  id, first_name, last_name, email, phone, headline, bio, location, embedding::text
)
FROM crm.contacts;
" | psql -h localhost -U postgres -d $TARGET_DB > /dev/null
echo "Contacts done."

echo ">>> Migrating Companies..."
psql -h localhost -U postgres -d $SOURCE_DB -t -A -c "
SELECT format(
  'INSERT INTO \"$TARGET_SCHEMA\".companies (id, entity_id, name, industry, description, embedding) VALUES (%L, ''$ENTITY_ID'', %L, %L, %L, %L::vector) ON CONFLICT (id) DO NOTHING;',
  id, name, industry, description, NULL::text
)
FROM crm.companies;
" | psql -h localhost -U postgres -d $TARGET_DB > /dev/null
echo "Companies done."

echo ">>> Migrating Events..."
psql -h localhost -U postgres -d $SOURCE_DB -t -A -c "
SELECT format(
  'INSERT INTO \"$TARGET_SCHEMA\".events (id, entity_id, name, event_type, location, city, started_at, ended_at, notes, embedding) VALUES (%L, ''$ENTITY_ID'', %L, %L, %L, %L, %L, %L, %L, %L::vector) ON CONFLICT (id) DO NOTHING;',
  id, name, event_type, location, city, started_at, ended_at, notes, NULL::text
)
FROM crm.events;
" | psql -h localhost -U postgres -d $TARGET_DB > /dev/null
echo "Events done."

echo ">>> Migrating Tasks..."
psql -h localhost -U postgres -d $SOURCE_DB -t -A -c "
SELECT format(
  'INSERT INTO \"$TARGET_SCHEMA\".tasks (id, entity_id, title, description, status, embedding) VALUES (%L, ''$ENTITY_ID'', %L, %L, %L, %L::vector) ON CONFLICT (id) DO NOTHING;',
  id, title, description, status, NULL::text
)
FROM crm.tasks;
" | psql -h localhost -U postgres -d $TARGET_DB > /dev/null
echo "Tasks done."

echo ">>> Migrating Notes..."
psql -h localhost -U postgres -d $SOURCE_DB -t -A -c "
SELECT format(
  'INSERT INTO \"$TARGET_SCHEMA\".notes (id, entity_id, content, embedding) VALUES (%L, ''$ENTITY_ID'', %L, %L::vector) ON CONFLICT (id) DO NOTHING;',
  id, content, NULL::text
)
FROM crm.notes;
" | psql -h localhost -U postgres -d $TARGET_DB > /dev/null
echo "Notes done."

echo ">>> Migrating Memories..."
psql -h localhost -U postgres -d $SOURCE_DB -t -A -c "
SELECT format(
  'INSERT INTO \"$TARGET_SCHEMA\".memories (id, entity_id, content, embedding) VALUES (%L, ''$ENTITY_ID'', %L, %L::vector) ON CONFLICT (id) DO NOTHING;',
  id, content, NULL::text
)
FROM crm.memories;
" | psql -h localhost -U postgres -d $TARGET_DB > /dev/null
echo "Memories done."

echo ">>> Migrating Rules..."
psql -h localhost -U postgres -d $SOURCE_DB -t -A -c "
SELECT format(
  'INSERT INTO \"$TARGET_SCHEMA\".rules (id, entity_id, title, content, is_active, embedding) VALUES (%L, ''$ENTITY_ID'', %L, %L, %L, %L::vector) ON CONFLICT (id) DO NOTHING;',
  id, title, content, is_active, NULL::text
)
FROM crm.rules;
" | psql -h localhost -U postgres -d $TARGET_DB > /dev/null
echo "Rules done."

echo ">>> Migrating Skills..."
psql -h localhost -U postgres -d $SOURCE_DB -t -A -c "
SELECT format(
  'INSERT INTO \"$TARGET_SCHEMA\".skills (id, entity_id, name, description, content, is_active, embedding) VALUES (%L, ''$ENTITY_ID'', %L, %L, %L, %L, %L::vector) ON CONFLICT (id) DO NOTHING;',
  id, name, description, content, is_active, NULL::text
)
FROM crm.skills;
" | psql -h localhost -U postgres -d $TARGET_DB > /dev/null
echo "Skills done."

echo ">>> Migrating Venues..."
psql -h localhost -U postgres -d $SOURCE_DB -t -A -c "
SELECT format(
  'INSERT INTO \"$TARGET_SCHEMA\".venues (id, entity_id, name, neighborhood, city, status, notes) VALUES (%L, ''$ENTITY_ID'', %L, %L, %L, %L, %L) ON CONFLICT (id) DO NOTHING;',
  id, name, neighborhood, city, status, notes
)
FROM crm.venues;
" | psql -h localhost -U postgres -d $TARGET_DB > /dev/null
echo "Venues done."

echo ">>> All targeted migrations completed."
