-- Verify schemas/app_scope/procedures/frames  on pg

BEGIN;

SELECT verify_function ('app_scope.frames');

ROLLBACK;
