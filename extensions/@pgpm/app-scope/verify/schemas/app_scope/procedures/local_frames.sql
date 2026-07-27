-- Verify schemas/app_scope/procedures/local_frames  on pg

BEGIN;

SELECT verify_function ('app_scope.local_frames');

ROLLBACK;
