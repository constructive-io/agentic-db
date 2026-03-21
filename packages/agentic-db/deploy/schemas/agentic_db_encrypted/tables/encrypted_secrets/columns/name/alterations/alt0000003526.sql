-- Deploy: schemas/agentic_db_encrypted/tables/encrypted_secrets/columns/name/alterations/alt0000003526
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_encrypted/schema
-- requires: schemas/agentic_db_encrypted/tables/encrypted_secrets/table
-- requires: schemas/agentic_db_encrypted/tables/encrypted_secrets/columns/name/column


ALTER TABLE agentic_db_encrypted.encrypted_secrets 
  ALTER COLUMN name SET NOT NULL;

