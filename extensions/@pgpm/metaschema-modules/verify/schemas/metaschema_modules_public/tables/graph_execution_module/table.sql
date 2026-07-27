-- Verify schemas/metaschema_modules_public/tables/graph_execution_module/table on pg

BEGIN;

SELECT verify_table ('metaschema_modules_public.graph_execution_module');

ROLLBACK;
