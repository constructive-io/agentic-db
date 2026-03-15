-- Revert schemas/metaschema_modules_public/tables/connected_accounts_module/table from pg

BEGIN;

DROP TABLE metaschema_modules_public.connected_accounts_module;

COMMIT;
