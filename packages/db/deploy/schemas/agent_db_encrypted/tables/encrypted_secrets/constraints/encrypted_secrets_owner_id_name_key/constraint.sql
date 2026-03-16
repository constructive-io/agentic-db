-- Deploy: schemas/agent_db_encrypted/tables/encrypted_secrets/constraints/encrypted_secrets_owner_id_name_key/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_encrypted/schema
-- requires: schemas/agent_db_encrypted/tables/encrypted_secrets/table


ALTER TABLE "agent_db_encrypted".encrypted_secrets 
  ADD CONSTRAINT encrypted_secrets_owner_id_name_key 
    UNIQUE (owner_id, name);

