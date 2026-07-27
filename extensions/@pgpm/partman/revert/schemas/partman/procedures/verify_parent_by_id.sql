-- Revert schemas/partman/procedures/verify_parent_by_id from pg

BEGIN;

DROP FUNCTION IF EXISTS partman.verify_parent_by_id(uuid);

COMMIT;
