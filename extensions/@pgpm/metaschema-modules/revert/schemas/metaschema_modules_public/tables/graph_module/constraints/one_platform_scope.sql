-- Revert schemas/metaschema_modules_public/tables/graph_module/constraints/one_platform_scope from pg

BEGIN;

DROP INDEX metaschema_modules_public.graph_module_one_platform_scope;

COMMIT;
