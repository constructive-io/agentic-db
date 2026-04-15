-- Deploy: schemas/agentic_db_encrypted/tables/encrypted_secrets/columns/value/alterations/alt0000012703
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_encrypted/schema
-- requires: schemas/agentic_db_encrypted/tables/encrypted_secrets/columns/value/column


COMMENT ON COLUMN agentic_db_encrypted.encrypted_secrets.value IS E'The hashed/encrypted secret value stored as binary';

