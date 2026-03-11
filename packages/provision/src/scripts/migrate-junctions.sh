#!/usr/bin/env bash
set -euo pipefail

export PGPASSWORD=password
SOURCE_DB="avengers_restore"
TARGET_DB="constructive"
TARGET_SCHEMA="agent-os-v2-1773264696010-2ec73da3-app-public"
ENTITY_ID="320827da-8801-453f-cc9a-c884b2fae8cf"

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
