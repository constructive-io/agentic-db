-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-simple-secrets/tables/secrets/alterations/alt0000000593
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-simple-secrets/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-simple-secrets/tables/secrets/table


COMMENT ON TABLE "agent-os-1773546821914-39f1cb9b-simple-secrets".secrets IS E'Plaintext key-value secrets store, owned per-user (e.g. TOTP seeds, verification tokens)';

