-- Verify schemas/app_scope/procedures/dyn_lookup_uuid  on pg

BEGIN;

SELECT verify_function ('app_scope.dyn_lookup_uuid');

ROLLBACK;
