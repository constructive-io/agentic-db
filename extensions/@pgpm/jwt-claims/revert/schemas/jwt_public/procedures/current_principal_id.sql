-- Revert schemas/jwt_public/procedures/current_principal_id from pg

BEGIN;

DROP FUNCTION IF EXISTS jwt_public.current_principal_id();

COMMIT;
