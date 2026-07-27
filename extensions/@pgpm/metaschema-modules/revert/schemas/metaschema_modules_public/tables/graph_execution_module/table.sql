-- Revert schemas/metaschema_modules_public/tables/graph_execution_module/table from pg

BEGIN;

DROP TABLE metaschema_modules_public.graph_execution_module;

COMMIT;
