-- Revert: schemas/agent_db_encrypted/tables/encrypted_secrets/columns/owner_id/alterations/alt0000003863


ALTER TABLE "agent_db_encrypted".encrypted_secrets 
  ALTER COLUMN owner_id DROP NOT NULL;


