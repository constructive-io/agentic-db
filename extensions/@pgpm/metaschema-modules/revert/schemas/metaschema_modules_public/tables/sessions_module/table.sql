-- Revert schemas/metaschema_modules_public/tables/sessions_module/table from pg

BEGIN;

DROP TABLE metaschema_modules_public.sessions_module;

COMMIT;
