-- Revert: schemas/agent_db_encrypted/tables/encrypted_secrets/constraints/encrypted_secrets_owner_id_name_key/constraint


ALTER TABLE agent_db_encrypted.encrypted_secrets 
  DROP CONSTRAINT encrypted_secrets_owner_id_name_key;


