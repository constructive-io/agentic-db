-- Verify schemas/ltree_helpers/procedures/to_query on pg

BEGIN;

SELECT verify_function ('ltree_helpers.to_query');

ROLLBACK;
