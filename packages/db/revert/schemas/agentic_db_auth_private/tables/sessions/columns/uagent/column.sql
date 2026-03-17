-- Revert: schemas/agentic_db_auth_private/tables/sessions/columns/uagent/column


ALTER TABLE "agentic_db_auth_private".sessions 
  DROP COLUMN uagent RESTRICT;


