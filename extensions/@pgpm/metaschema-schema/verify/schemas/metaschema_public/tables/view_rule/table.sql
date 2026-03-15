-- Verify schemas/metaschema_public/tables/view_rule/table on pg

BEGIN;

SELECT id, database_id, view_id, name, event, action
FROM metaschema_public.view_rule
WHERE FALSE;

ROLLBACK;
