-- Deploy: schemas/agentic_db_encrypted/tables/encrypted_secrets/columns/owner_id/alterations/alt0000005366
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_encrypted/schema
-- requires: schemas/agentic_db_encrypted/tables/encrypted_secrets/table
-- requires: schemas/agentic_db_encrypted/tables/encrypted_secrets/columns/owner_id/column


ALTER TABLE agentic_db_encrypted.encrypted_secrets 
  ALTER COLUMN owner_id SET NOT NULL;

