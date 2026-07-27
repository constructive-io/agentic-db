-- Revert schemas/ltree_helpers/procedures/to_path from pg

BEGIN;

DROP FUNCTION ltree_helpers.to_path;

COMMIT;
