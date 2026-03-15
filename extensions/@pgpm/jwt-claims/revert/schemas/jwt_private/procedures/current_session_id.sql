-- Revert schemas/jwt_private/procedures/current_session_id from pg

BEGIN;

DROP FUNCTION jwt_private.current_session_id;

COMMIT;
