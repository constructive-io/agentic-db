-- Revert: schemas/agentic_db_encrypted/tables/encrypted_secrets/columns/owner_id/alterations/alt0000000693


ALTER TABLE "agentic_db_encrypted".encrypted_secrets 
  ALTER COLUMN owner_id DROP NOT NULL;


