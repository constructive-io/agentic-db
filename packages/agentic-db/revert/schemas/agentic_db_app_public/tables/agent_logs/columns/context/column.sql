-- Revert: schemas/agentic_db_app_public/tables/agent_logs/columns/context/column


ALTER TABLE "agentic_db_app_public".agent_logs 
  DROP COLUMN context RESTRICT;


