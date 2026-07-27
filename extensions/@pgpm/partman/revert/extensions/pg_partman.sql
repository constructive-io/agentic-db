-- Revert extensions/pg_partman from pg

BEGIN;

DROP EXTENSION IF EXISTS pg_partman CASCADE;
DROP SCHEMA IF EXISTS partman CASCADE;

COMMIT;
