-- Revert: schemas/agent_db_auth_private/tables/session_credentials/columns/secret_hash/alterations/alt0000002342


ALTER TABLE "agent_db_auth_private".session_credentials 
  ALTER COLUMN secret_hash DROP NOT NULL;


