-- Revert schemas/partman/procedures/create_parent_by_id from pg

BEGIN;

DROP FUNCTION IF EXISTS partman.create_parent_by_id(uuid, text, text, text, int, text, boolean);

COMMIT;
