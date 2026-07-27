-- Verify schemas/ltree_helpers/procedures/to_path on pg

BEGIN;

SELECT verify_function ('ltree_helpers.to_path');

ROLLBACK;
