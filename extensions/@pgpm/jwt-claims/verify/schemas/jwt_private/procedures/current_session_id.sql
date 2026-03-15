-- Verify schemas/jwt_private/procedures/current_session_id on pg

BEGIN;

SELECT verify_function ('jwt_private.current_session_id');

ROLLBACK;
