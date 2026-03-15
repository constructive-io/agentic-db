-- Deploy: schemas/agent_db_encrypted/tables/encrypted_secrets/alterations/alt0000000688
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_encrypted/schema
-- requires: schemas/agent_db_encrypted/tables/encrypted_secrets/table


ALTER TABLE agent_db_encrypted.encrypted_secrets 
  DISABLE ROW LEVEL SECURITY;

