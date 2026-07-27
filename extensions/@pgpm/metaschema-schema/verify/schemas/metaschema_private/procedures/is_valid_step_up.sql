-- Verify schemas/metaschema_private/procedures/is_valid_step_up on pg

BEGIN;

SELECT verify_function ('metaschema_private.is_valid_step_up');

SELECT verify_function ('metaschema_private.is_valid_step_up_conditions');

ROLLBACK;
