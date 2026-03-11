#!/usr/bin/env bash
set -euo pipefail

export PGPASSWORD=password
SOURCE_DB="avengers_restore"
TARGET_DB="constructive"
TARGET_SCHEMA="agent-os-v2-1773264696010-2ec73da3-app-public"
ENTITY_ID="320827da-8801-453f-cc9a-c884b2fae8cf"

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
  'INSERT INTO \"$TARGET_SCHEMA\".events (id, entity_id, name, event_type, location, city, notes, embedding) VALUES (%L, ''$ENTITY_ID'', %L, %L, %L, %L, %L, %L::vector) ON CONFLICT (id) DO NOTHING;',
  id, name, event_type, location, city, notes, embedding::text
)
FROM crm.events;
" | psql -h localhost -U postgres -d $TARGET_DB > /dev/null
echo "Events done."

echo ">>> Migrating Tasks..."
psql -h localhost -U postgres -d $SOURCE_DB -t -A -c "
SELECT format(
  'INSERT INTO \"$TARGET_SCHEMA\".tasks (id, entity_id, title, description, status, priority) VALUES (%L, ''$ENTITY_ID'', %L, %L, %L, %L) ON CONFLICT (id) DO NOTHING;',
  id, title, description, status, priority
)
FROM agent.tasks;
" | psql -h localhost -U postgres -d $TARGET_DB > /dev/null
echo "Tasks done."

echo ">>> Migrating Notes..."
psql -h localhost -U postgres -d $SOURCE_DB -t -A -c "
SELECT format(
  'INSERT INTO \"$TARGET_SCHEMA\".notes (id, entity_id, content, embedding, contact_id) VALUES (%L, ''$ENTITY_ID'', %L, %L::vector, %L) ON CONFLICT (id) DO NOTHING;',
  id, body, embedding::text, contact_id
)
FROM crm.notes;
" | psql -h localhost -U postgres -d $TARGET_DB > /dev/null
echo "Notes done."

echo ">>> Migrating Memories..."
psql -h localhost -U postgres -d $SOURCE_DB -t -A -c "
SELECT format(
  'INSERT INTO \"$TARGET_SCHEMA\".memories (id, entity_id, content, embedding) VALUES (%L, ''$ENTITY_ID'', %L, %L::vector) ON CONFLICT (id) DO NOTHING;',
  id, content, embedding::text
)
FROM agent.memories;
" | psql -h localhost -U postgres -d $TARGET_DB > /dev/null
echo "Memories done."

echo ">>> Migrating Rules..."
psql -h localhost -U postgres -d $SOURCE_DB -t -A -c "
SELECT format(
  'INSERT INTO \"$TARGET_SCHEMA\".rules (id, entity_id, title, content, kind, is_active, embedding) VALUES (%L, ''$ENTITY_ID'', %L, %L, %L, %L, %L::vector) ON CONFLICT (id) DO NOTHING;',
  id, title, content, kind, active, embedding::text
)
FROM agent.rules;
" | psql -h localhost -U postgres -d $TARGET_DB > /dev/null
echo "Rules done."

echo ">>> Migrating Skills..."
psql -h localhost -U postgres -d $SOURCE_DB -t -A -c "
SELECT format(
  'INSERT INTO \"$TARGET_SCHEMA\".skills (id, entity_id, name, description, content, is_active, embedding) VALUES (%L, ''$ENTITY_ID'', %L, %L, %L, %L, %L::vector) ON CONFLICT (id) DO NOTHING;',
  id, name, description, content, active, embedding::text
)
FROM agent.skills;
" | psql -h localhost -U postgres -d $TARGET_DB > /dev/null
echo "Skills done."

echo ">>> All targeted migrations completed."

echo ">>> Migrating Venues..."
psql -h localhost -U postgres -d $SOURCE_DB -t -A -c "
SELECT format(
  'INSERT INTO \"$TARGET_SCHEMA\".venues (id, entity_id, name, neighborhood, city, status, notes) VALUES (%L, ''$ENTITY_ID'', %L, %L, %L, %L, %L) ON CONFLICT (id) DO NOTHING;',
  id, name, neighborhood, city, status, notes
)
FROM crm.venues;
" | psql -h localhost -U postgres -d $TARGET_DB > /dev/null
echo "Venues done."
