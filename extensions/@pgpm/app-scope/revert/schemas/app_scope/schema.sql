-- Revert schemas/app_scope/schema from pg

BEGIN;

DROP SCHEMA app_scope;

COMMIT;
