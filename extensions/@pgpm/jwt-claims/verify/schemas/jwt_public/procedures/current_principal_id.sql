-- Verify schemas/jwt_public/procedures/current_principal_id on pg

BEGIN;

SELECT has_function_privilege(
    'jwt_public.current_principal_id()',
    'execute'
);

ROLLBACK;
