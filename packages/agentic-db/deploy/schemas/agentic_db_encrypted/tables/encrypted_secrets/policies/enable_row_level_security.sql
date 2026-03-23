-- Deploy: schemas/agentic_db_encrypted/tables/encrypted_secrets/policies/enable_row_level_security
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_encrypted/schema
-- requires: schemas/agentic_db_encrypted/tables/encrypted_secrets/table


ALTER TABLE agentic_db_encrypted.encrypted_secrets 
  ENABLE ROW LEVEL SECURITY;

