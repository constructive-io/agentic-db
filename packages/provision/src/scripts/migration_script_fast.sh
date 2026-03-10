#!/bin/bash
export PGPASSWORD=password
psql -h localhost -U postgres -d temp_restore -t -A -c "
SELECT format(
  'INSERT INTO \"agent-os-v2-1772803474534-d8c00e38-app-public\".skills (id, entity_id, name, description, content, is_active, tags, embedding) VALUES (%L, ''32ed69d4-d975-42e7-f0df-9afe61be1ffd'', %L, %L, %L, %L, %L::text[], %L::vector) ON CONFLICT (id) DO NOTHING;',
  id, name, description, content, is_active, tags::text, embedding::text
)
FROM \"agent-os-1772665649005-3bb72d37-app-public\".skills;
" | psql -h localhost -U postgres -d constructive
