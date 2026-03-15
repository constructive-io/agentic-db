-- Deploy: schemas/agent-os-1773547105079-c748b4c3-encrypted/tables/encrypted_secrets/columns/name/alterations/alt0000002257
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-encrypted/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-encrypted/tables/encrypted_secrets/columns/name/column


COMMENT ON COLUMN "agent-os-1773547105079-c748b4c3-encrypted".encrypted_secrets.name IS E'Key name identifying the secret (e.g. password)';

