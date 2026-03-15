-- Revert schemas/metaschema_modules_public/tables/uuid_module/table from pg

BEGIN;

DROP TABLE metaschema_modules_public.uuid_module;

COMMIT;
