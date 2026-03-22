-- Revert: schemas/agentic_db_app_public/tables/agent_tasks/columns/title/column


ALTER TABLE "agentic_db_app_public".agent_tasks 
  DROP COLUMN title RESTRICT;


