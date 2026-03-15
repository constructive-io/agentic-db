-- Revert schemas/metaschema_modules_public/tables/membership_types_module/table from pg

BEGIN;

DROP TABLE metaschema_modules_public.membership_types_module;

COMMIT;
