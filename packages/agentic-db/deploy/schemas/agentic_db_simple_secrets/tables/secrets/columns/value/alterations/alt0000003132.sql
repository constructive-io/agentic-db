-- Deploy: schemas/agentic_db_simple_secrets/tables/secrets/columns/value/alterations/alt0000003132
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_simple_secrets/schema
-- requires: schemas/agentic_db_simple_secrets/tables/secrets/columns/value/column


COMMENT ON COLUMN agentic_db_simple_secrets.secrets.value IS 'The plaintext secret value';

