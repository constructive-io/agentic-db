-- Revert schemas/metaschema_private/schema from pg

BEGIN;

DROP SCHEMA metaschema_private CASCADE;

COMMIT;
