-- Deploy: schemas/agent-os-1773547105079-c748b4c3-simple-secrets/tables/secrets/alterations/alt0000002154
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-simple-secrets/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-simple-secrets/tables/secrets/table


COMMENT ON TABLE "agent-os-1773547105079-c748b4c3-simple-secrets".secrets IS E'Plaintext key-value secrets store, owned per-user (e.g. TOTP seeds, verification tokens)';

