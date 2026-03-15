-- Deploy: schemas/agent-os-1773547105079-c748b4c3-simple-secrets/tables/secrets/columns/name/alterations/alt0000002161
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-simple-secrets/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-simple-secrets/tables/secrets/columns/name/column


COMMENT ON COLUMN "agent-os-1773547105079-c748b4c3-simple-secrets".secrets.name IS E'Key name identifying the secret (e.g. totp_seed, verification_token)';

