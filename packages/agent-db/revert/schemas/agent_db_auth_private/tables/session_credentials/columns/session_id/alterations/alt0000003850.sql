-- Revert: schemas/agent_db_auth_private/tables/session_credentials/columns/session_id/alterations/alt0000003850


ALTER TABLE "agent_db_auth_private".session_credentials 
  ALTER COLUMN session_id DROP NOT NULL;


