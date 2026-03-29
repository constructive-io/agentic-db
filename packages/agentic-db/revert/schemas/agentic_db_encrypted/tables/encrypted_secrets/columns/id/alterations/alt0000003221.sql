-- Revert: schemas/agentic_db_encrypted/tables/encrypted_secrets/columns/id/alterations/alt0000003221


ALTER TABLE agentic_db_encrypted.encrypted_secrets 
  ALTER COLUMN id DROP NOT NULL;


