-- Deploy: schemas/agent_db_simple_secrets/tables/secrets/alterations/alt0000002297
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_simple_secrets/schema
-- requires: schemas/agent_db_simple_secrets/tables/secrets/table


COMMENT ON TABLE "agent_db_simple_secrets".secrets IS E'Plaintext key-value secrets store, owned per-user (e.g. TOTP seeds, verification tokens)';

