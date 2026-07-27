-- Revert schemas/metaschema_modules_public/tables/webhook_module/table from pg

BEGIN;

DROP TABLE metaschema_modules_public.webhook_module;

COMMIT;
