-- Revert schemas/partman/procedures/remove_parent_by_id from pg

BEGIN;

DROP FUNCTION IF EXISTS partman.remove_parent_by_id(uuid);

COMMIT;
