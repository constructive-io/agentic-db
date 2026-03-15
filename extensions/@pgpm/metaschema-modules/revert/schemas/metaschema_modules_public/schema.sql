-- Revert schemas/metaschema_modules_public/schema from pg

BEGIN;

DROP SCHEMA metaschema_modules_public;

COMMIT;
