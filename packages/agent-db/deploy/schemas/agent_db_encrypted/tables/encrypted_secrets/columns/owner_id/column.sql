-- Deploy: schemas/agent_db_encrypted/tables/encrypted_secrets/columns/owner_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_encrypted/schema
-- requires: schemas/agent_db_encrypted/tables/encrypted_secrets/table


ALTER TABLE agent_db_encrypted.encrypted_secrets 
  ADD COLUMN owner_id uuid;

