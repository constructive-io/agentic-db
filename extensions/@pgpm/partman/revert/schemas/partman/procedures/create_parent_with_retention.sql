-- Revert schemas/partman/procedures/create_parent_with_retention from pg

BEGIN;

DROP FUNCTION IF EXISTS partman.create_parent_with_retention(text, text, text, text, int, text, boolean);

COMMIT;
