-- Revert schemas/metaschema_modules_public/tables/invites_module/table from pg

BEGIN;

DROP TABLE metaschema_modules_public.invites_module;

COMMIT;
