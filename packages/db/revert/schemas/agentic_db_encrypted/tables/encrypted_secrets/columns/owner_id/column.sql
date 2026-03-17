-- Revert: schemas/agentic_db_encrypted/tables/encrypted_secrets/columns/owner_id/column


ALTER TABLE "agentic_db_encrypted".encrypted_secrets 
  DROP COLUMN owner_id RESTRICT;


