-- Verify schemas/metaschema_modules_public/tables/blueprint_construction/table

BEGIN;

SELECT id, blueprint_id, database_id, schema_id, status, error_details,
       table_map, constructed_definition, constructed_at, created_at, updated_at
FROM metaschema_modules_public.blueprint_construction
WHERE FALSE;

ROLLBACK;
