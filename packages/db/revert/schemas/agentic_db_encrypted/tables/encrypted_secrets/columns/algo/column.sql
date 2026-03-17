-- Revert: schemas/agentic_db_encrypted/tables/encrypted_secrets/columns/algo/column


ALTER TABLE "agentic_db_encrypted".encrypted_secrets 
  DROP COLUMN algo RESTRICT;


