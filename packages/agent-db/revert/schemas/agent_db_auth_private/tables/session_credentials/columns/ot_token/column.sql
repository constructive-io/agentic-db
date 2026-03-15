-- Revert: schemas/agent_db_auth_private/tables/session_credentials/columns/ot_token/column


ALTER TABLE "agent_db_auth_private".session_credentials 
  DROP COLUMN ot_token RESTRICT;


