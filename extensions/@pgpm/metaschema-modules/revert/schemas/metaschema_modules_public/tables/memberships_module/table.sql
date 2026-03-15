-- Revert schemas/metaschema_modules_public/tables/memberships_module/table from pg

BEGIN;

DROP TABLE metaschema_modules_public.memberships_module;

COMMIT;
