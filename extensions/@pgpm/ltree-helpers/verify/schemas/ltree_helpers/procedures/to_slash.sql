-- Verify schemas/ltree_helpers/procedures/to_slash on pg

BEGIN;

SELECT verify_function ('ltree_helpers.to_slash');

ROLLBACK;
