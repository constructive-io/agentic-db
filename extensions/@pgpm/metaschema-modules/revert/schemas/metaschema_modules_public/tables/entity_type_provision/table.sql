-- Revert schemas/metaschema_modules_public/tables/entity_type_provision/table from pg

BEGIN;

DROP TABLE metaschema_modules_public.entity_type_provision;

COMMIT;
