-- Deploy: schemas/agent_db_encrypted/tables/encrypted_secrets/columns/name/alterations/alt0000000695
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_encrypted/schema
-- requires: schemas/agent_db_encrypted/tables/encrypted_secrets/table
-- requires: schemas/agent_db_encrypted/tables/encrypted_secrets/columns/name/column


ALTER TABLE agent_db_encrypted.encrypted_secrets 
  ALTER COLUMN name SET NOT NULL;

