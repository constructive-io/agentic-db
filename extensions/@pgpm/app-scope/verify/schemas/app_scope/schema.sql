-- Verify schemas/app_scope/schema  on pg

BEGIN;

SELECT verify_schema ('app_scope');

ROLLBACK;
