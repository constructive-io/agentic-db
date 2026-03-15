-- Revert: schemas/agent_db_app_public/tables/sessions/columns/agent_id/column


ALTER TABLE "agent_db_app_public".sessions 
  DROP COLUMN agent_id RESTRICT;


