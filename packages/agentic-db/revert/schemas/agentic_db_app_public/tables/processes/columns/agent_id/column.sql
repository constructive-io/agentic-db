-- Revert: schemas/agentic_db_app_public/tables/processes/columns/agent_id/column


ALTER TABLE "agentic_db_app_public".processes 
  DROP COLUMN agent_id RESTRICT;


