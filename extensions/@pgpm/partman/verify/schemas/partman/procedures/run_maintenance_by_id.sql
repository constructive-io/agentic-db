-- Verify schemas/partman/procedures/run_maintenance_by_id on pg

BEGIN;

SELECT has_function_privilege('partman.run_maintenance_by_id(uuid, boolean)', 'execute');

ROLLBACK;
