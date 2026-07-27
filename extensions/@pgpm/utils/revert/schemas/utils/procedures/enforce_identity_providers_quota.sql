-- Revert schemas/utils/procedures/enforce_identity_providers_quota from pg

BEGIN;

DROP FUNCTION utils.enforce_identity_providers_quota;

COMMIT;
