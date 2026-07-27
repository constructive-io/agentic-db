-- Verify schemas/partman/procedures/verify_parent_by_id on pg

BEGIN;

SELECT has_function_privilege('partman.verify_parent_by_id(uuid)', 'execute');

ROLLBACK;
