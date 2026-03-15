-- Deploy: schemas/agent-os-1773551593867-bac64076-simple-secrets/tables/secrets/columns/name/alterations/alt0000002209
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-simple-secrets/schema
-- requires: schemas/agent-os-1773551593867-bac64076-simple-secrets/tables/secrets/columns/name/column


COMMENT ON COLUMN "agent-os-1773551593867-bac64076-simple-secrets".secrets.name IS E'Key name identifying the secret (e.g. totp_seed, verification_token)';

