-- Revert schemas/jwt_public/procedures/current_role_type from pg

BEGIN;

DROP FUNCTION IF EXISTS jwt_public.current_role_type();

COMMIT;
