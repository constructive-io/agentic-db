-- Verify schemas/partman/procedures/remove_parent_by_id on pg

BEGIN;

SELECT has_function_privilege('partman.remove_parent_by_id(uuid)', 'execute');

ROLLBACK;
