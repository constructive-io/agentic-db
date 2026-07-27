-- Revert schemas/metaschema_modules_public/tables/domain_module/table from pg

BEGIN;

DROP TABLE metaschema_modules_public.domain_module;

COMMIT;
