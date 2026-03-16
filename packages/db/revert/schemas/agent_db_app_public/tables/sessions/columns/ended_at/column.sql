-- Revert: schemas/agent_db_app_public/tables/sessions/columns/ended_at/column


ALTER TABLE "agent_db_app_public".sessions 
  DROP COLUMN ended_at RESTRICT;


