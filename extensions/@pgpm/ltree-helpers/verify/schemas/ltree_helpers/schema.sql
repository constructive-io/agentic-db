-- Verify schemas/ltree_helpers/schema on pg

BEGIN;

SELECT verify_schema ('ltree_helpers');

ROLLBACK;
