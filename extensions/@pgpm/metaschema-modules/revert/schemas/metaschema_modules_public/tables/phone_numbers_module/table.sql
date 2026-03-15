-- Revert schemas/metaschema_modules_public/tables/phone_numbers_module/table from pg

BEGIN;

DROP TABLE metaschema_modules_public.phone_numbers_module;

COMMIT;
