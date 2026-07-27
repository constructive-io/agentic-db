-- Revert schemas/ltree_helpers/procedures/to_slash from pg

BEGIN;

DROP FUNCTION ltree_helpers.to_slash;

COMMIT;
