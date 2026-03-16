-- Revert: schemas/agent_db_auth_private/tables/sessions/columns/ip/column


ALTER TABLE "agent_db_auth_private".sessions 
  DROP COLUMN ip RESTRICT;


