-- Revert: schemas/agent_db_auth_private/tables/session_credentials/columns/created_at/alterations/alt0000001498


ALTER TABLE "agent_db_auth_private".session_credentials 
  ALTER COLUMN created_at DROP DEFAULT;


