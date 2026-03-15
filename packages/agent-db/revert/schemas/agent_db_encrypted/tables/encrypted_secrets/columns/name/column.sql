-- Revert: schemas/agent_db_encrypted/tables/encrypted_secrets/columns/name/column


ALTER TABLE "agent_db_encrypted".encrypted_secrets 
  DROP COLUMN name RESTRICT;


