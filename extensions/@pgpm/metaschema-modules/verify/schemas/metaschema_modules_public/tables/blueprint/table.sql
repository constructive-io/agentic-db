-- Verify schemas/metaschema_modules_public/tables/blueprint/table on pg

BEGIN;

SELECT
    id,
    owner_id,
    database_id,
    name,
    display_name,
    description,
    definition,
    template_id,
    status,
    constructed_at,
    error_details,
    ref_map,
    constructed_definition,
    definition_hash,
    table_hashes,
    created_at,
    updated_at
FROM metaschema_modules_public.blueprint
WHERE FALSE;

ROLLBACK;
