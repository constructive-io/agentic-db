-- Revert: schemas/agentic_db_app_public/tables/agent_logs/columns/level/column


ALTER TABLE "agentic_db_app_public".agent_logs 
  DROP COLUMN level RESTRICT;


