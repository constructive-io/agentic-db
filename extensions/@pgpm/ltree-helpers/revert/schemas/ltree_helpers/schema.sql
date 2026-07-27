-- Revert schemas/ltree_helpers/schema from pg

BEGIN;

DROP SCHEMA ltree_helpers CASCADE;

COMMIT;
