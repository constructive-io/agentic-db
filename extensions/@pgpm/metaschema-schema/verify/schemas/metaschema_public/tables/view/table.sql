-- Verify schemas/metaschema_public/tables/view/table on pg

BEGIN;

SELECT id, database_id, schema_id, name, view_type, data, filter_type, filter_data,
       security_invoker, is_read_only, smart_tags, category, module, scope, tags
FROM metaschema_public.view
WHERE FALSE;

ROLLBACK;
