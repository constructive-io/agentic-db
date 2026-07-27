-- Verify schemas/partman/procedures/create_parent_with_retention on pg

BEGIN;

SELECT has_function_privilege('partman.create_parent_with_retention(text, text, text, text, int, text, boolean)', 'execute');

ROLLBACK;
