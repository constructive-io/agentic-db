-- Revert schemas/metaschema_modules_public/tables/graph_module/table from pg

BEGIN;

DROP TABLE metaschema_modules_public.graph_module;

COMMIT;
