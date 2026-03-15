-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-simple-secrets/tables/secrets/alterations/alt0000000593
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-simple-secrets/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-simple-secrets/tables/secrets/table


COMMENT ON TABLE "agent-os-1773550873753-b6c4a3e1-simple-secrets".secrets IS E'Plaintext key-value secrets store, owned per-user (e.g. TOTP seeds, verification tokens)';

