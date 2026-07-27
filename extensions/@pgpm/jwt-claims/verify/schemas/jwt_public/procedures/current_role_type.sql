-- Verify schemas/jwt_public/procedures/current_role_type on pg

BEGIN;

SELECT has_function_privilege(
  'jwt_public.current_role_type()',
  'execute'
);

ROLLBACK;
