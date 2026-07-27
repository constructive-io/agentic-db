-- Revert schemas/metaschema_private/procedures/is_valid_step_up from pg

BEGIN;

DROP FUNCTION metaschema_private.is_valid_step_up;

DROP FUNCTION metaschema_private.is_valid_step_up_conditions;

COMMIT;
