-- Revert: schemas/agentic_db_app_public/tables/agent_logs/columns/embedding/column


ALTER TABLE "agentic_db_app_public".agent_logs 
  DROP COLUMN embedding RESTRICT;


