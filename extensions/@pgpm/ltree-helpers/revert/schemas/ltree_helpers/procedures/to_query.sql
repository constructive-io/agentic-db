-- Revert schemas/ltree_helpers/procedures/to_query from pg

BEGIN;

DROP FUNCTION ltree_helpers.to_query;

COMMIT;
