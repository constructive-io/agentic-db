-- Deploy: schemas/agent-os-1773551593867-bac64076-simple-secrets/tables/secrets/alterations/alt0000002202
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-simple-secrets/schema
-- requires: schemas/agent-os-1773551593867-bac64076-simple-secrets/tables/secrets/table


COMMENT ON TABLE "agent-os-1773551593867-bac64076-simple-secrets".secrets IS E'Plaintext key-value secrets store, owned per-user (e.g. TOTP seeds, verification tokens)';

