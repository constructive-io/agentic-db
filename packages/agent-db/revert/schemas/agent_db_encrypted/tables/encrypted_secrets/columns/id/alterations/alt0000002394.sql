-- Revert: schemas/agent_db_encrypted/tables/encrypted_secrets/columns/id/alterations/alt0000002394


ALTER TABLE "agent_db_encrypted".encrypted_secrets 
  ALTER COLUMN id DROP NOT NULL;


