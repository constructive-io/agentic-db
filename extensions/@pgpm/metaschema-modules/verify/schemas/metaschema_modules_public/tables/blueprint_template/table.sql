-- Verify schemas/metaschema_modules_public/tables/blueprint_template/table on pg

BEGIN;

SELECT
    id,
    name,
    version,
    display_name,
    description,
    owner_id,
    visibility,
    categories,
    tags,
    definition,
    definition_schema_version,
    source,
    complexity,
    copy_count,
    fork_count,
    forked_from_id,
    definition_hash,
    table_hashes,
    created_at,
    updated_at
FROM metaschema_modules_public.blueprint_template
WHERE FALSE;

ROLLBACK;
