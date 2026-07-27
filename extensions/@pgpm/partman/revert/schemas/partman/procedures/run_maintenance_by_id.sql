-- Revert schemas/partman/procedures/run_maintenance_by_id from pg

BEGIN;

DROP FUNCTION IF EXISTS partman.run_maintenance_by_id(uuid, boolean);

COMMIT;
