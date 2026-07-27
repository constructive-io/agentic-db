-- Verify schemas/utils/procedures/enforce_identity_providers_quota  on pg

BEGIN;

SELECT verify_function ('utils.enforce_identity_providers_quota');

ROLLBACK;
