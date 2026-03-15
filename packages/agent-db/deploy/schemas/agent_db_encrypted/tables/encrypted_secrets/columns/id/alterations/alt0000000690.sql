-- Deploy: schemas/agent_db_encrypted/tables/encrypted_secrets/columns/id/alterations/alt0000000690
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_encrypted/schema
-- requires: schemas/agent_db_encrypted/tables/encrypted_secrets/table
-- requires: schemas/agent_db_encrypted/tables/encrypted_secrets/columns/id/column


ALTER TABLE agent_db_encrypted.encrypted_secrets 
  ALTER COLUMN id SET NOT NULL;

