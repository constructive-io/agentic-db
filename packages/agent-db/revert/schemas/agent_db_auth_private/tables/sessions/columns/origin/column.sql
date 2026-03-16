-- Revert: schemas/agent_db_auth_private/tables/sessions/columns/origin/column


ALTER TABLE "agent_db_auth_private".sessions 
  DROP COLUMN origin RESTRICT;


