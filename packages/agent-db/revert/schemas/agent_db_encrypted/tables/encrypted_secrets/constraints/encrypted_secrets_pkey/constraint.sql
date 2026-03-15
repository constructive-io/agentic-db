-- Revert: schemas/agent_db_encrypted/tables/encrypted_secrets/constraints/encrypted_secrets_pkey/constraint


ALTER TABLE agent_db_encrypted.encrypted_secrets 
  DROP CONSTRAINT encrypted_secrets_pkey;


