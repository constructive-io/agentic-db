-- Revert: schemas/agent_db_auth_private/tables/session_credentials/columns/name/column


ALTER TABLE "agent_db_auth_private".session_credentials 
  DROP COLUMN name RESTRICT;


