-- Revert: schemas/agent_db_auth_private/tables/session_credentials/columns/kind/alterations/alt0000002338


ALTER TABLE "agent_db_auth_private".session_credentials 
  ALTER COLUMN kind DROP NOT NULL;


