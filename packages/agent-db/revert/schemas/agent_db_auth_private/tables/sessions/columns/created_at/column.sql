-- Revert: schemas/agent_db_auth_private/tables/sessions/columns/created_at/column


ALTER TABLE "agent_db_auth_private".sessions 
  DROP COLUMN created_at RESTRICT;


