-- Revert schemas/metaschema_modules_public/tables/plans_module/table from pg

BEGIN;

DROP TABLE IF EXISTS metaschema_modules_public.plans_module;

COMMIT;
