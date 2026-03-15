-- Revert: schemas/agent_db_encrypted/tables/encrypted_secrets/columns/name/alterations/alt0000002399


ALTER TABLE "agent_db_encrypted".encrypted_secrets 
  ALTER COLUMN name DROP NOT NULL;


