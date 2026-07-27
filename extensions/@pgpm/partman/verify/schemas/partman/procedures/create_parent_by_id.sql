-- Verify schemas/partman/procedures/create_parent_by_id on pg

BEGIN;

SELECT has_function_privilege('partman.create_parent_by_id(uuid, text, text, text, int, text, boolean)', 'execute');

ROLLBACK;
