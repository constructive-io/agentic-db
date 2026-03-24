-- Revert: schemas/agentic_db_app_public/tables/agent_tasks/columns/embedding/column


ALTER TABLE "agentic_db_app_public".agent_tasks 
  DROP COLUMN embedding RESTRICT;


