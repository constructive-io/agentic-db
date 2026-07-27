-- Verify schemas/app_scope/procedures/membership_parent  on pg

BEGIN;

SELECT verify_function ('app_scope.membership_parent');

ROLLBACK;
