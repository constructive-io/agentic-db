-- Deploy: schemas/agentic_db_simple_secrets/tables/secrets/alterations/alt0000010084
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_simple_secrets/schema
-- requires: schemas/agentic_db_simple_secrets/tables/secrets/table


COMMENT ON TABLE agentic_db_simple_secrets.secrets IS E'Plaintext key-value secrets store, owned per-user (e.g. TOTP seeds, verification tokens)';

