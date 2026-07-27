-- Verify schemas/function_resolution/schema  on pg

BEGIN;

SELECT verify_schema ('function_resolution');

ROLLBACK;
