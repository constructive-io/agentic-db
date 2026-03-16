-- Deploy: schemas/agentic_db_encrypted/tables/encrypted_secrets/columns/id/alterations/alt0000000692
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_encrypted/schema
-- requires: schemas/agentic_db_encrypted/tables/encrypted_secrets/columns/id/column


COMMENT ON COLUMN "agentic_db_encrypted".encrypted_secrets.id IS 'Unique identifier for this encrypted secret entry';

