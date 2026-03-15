-- Revert: schemas/agent_db_auth_private/tables/sessions/columns/uagent/column


ALTER TABLE "agent_db_auth_private".sessions 
  DROP COLUMN uagent RESTRICT;


