-- Revert schemas/metaschema_modules_public/tables/emails_module/table from pg

BEGIN;

DROP TABLE metaschema_modules_public.emails_module;

COMMIT;
