-- Revert: schemas/agent_db_auth_private/tables/sessions/columns/updated_at/column


ALTER TABLE "agent_db_auth_private".sessions 
  DROP COLUMN updated_at RESTRICT;


