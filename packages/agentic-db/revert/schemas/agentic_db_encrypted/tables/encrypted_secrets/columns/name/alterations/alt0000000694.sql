-- Revert: schemas/agentic_db_encrypted/tables/encrypted_secrets/columns/name/alterations/alt0000000694


ALTER TABLE "agentic_db_encrypted".encrypted_secrets 
  ALTER COLUMN name DROP NOT NULL;


