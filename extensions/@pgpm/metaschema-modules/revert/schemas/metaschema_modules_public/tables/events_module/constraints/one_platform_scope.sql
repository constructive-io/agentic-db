-- Revert schemas/metaschema_modules_public/tables/events_module/constraints/one_platform_scope from pg

BEGIN;

DROP INDEX metaschema_modules_public.events_module_one_platform_scope;

COMMIT;
