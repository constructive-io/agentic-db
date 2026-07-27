-- Verify schemas/metaschema_public/tables/node_type_registry/table on pg

BEGIN;

SELECT name, slug, category, display_name, description, parameter_schema, tags
FROM metaschema_public.node_type_registry
WHERE FALSE;

ROLLBACK;
