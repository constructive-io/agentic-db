-- Revert: schemas/agent_db_auth_private/tables/session_credentials/columns/updated_at/alterations/alt0000003817


ALTER TABLE "agent_db_auth_private".session_credentials 
  ALTER COLUMN updated_at DROP DEFAULT;


