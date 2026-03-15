-- Revert: schemas/agent_db_app_public/tables/sessions/columns/contexts_used/column


ALTER TABLE "agent_db_app_public".sessions 
  DROP COLUMN contexts_used RESTRICT;


