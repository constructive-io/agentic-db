-- Revert schemas/metaschema_modules_public/tables/secure_table_provision/table from pg

BEGIN;

DROP TABLE IF EXISTS metaschema_modules_public.secure_table_provision;

COMMIT;
