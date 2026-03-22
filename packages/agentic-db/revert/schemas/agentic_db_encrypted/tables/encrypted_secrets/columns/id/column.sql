-- Revert: schemas/agentic_db_encrypted/tables/encrypted_secrets/columns/id/column


ALTER TABLE "agentic_db_encrypted".encrypted_secrets 
  DROP COLUMN id RESTRICT;


