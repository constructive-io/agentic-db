-- Revert schemas/jwt_private/procedures/current_api_id from pg

BEGIN;

DROP FUNCTION jwt_private.current_api_id;

COMMIT;
