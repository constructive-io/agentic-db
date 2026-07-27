-- Revert schemas/app_scope/procedures/membership_parent from pg

BEGIN;

DROP FUNCTION app_scope.membership_parent;

COMMIT;
