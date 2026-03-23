-- Revert: schemas/agentic_db_app_public/tables/agent_logs_chunks/columns/id/column


ALTER TABLE "agentic_db_app_public".agent_logs_chunks 
  DROP COLUMN id RESTRICT;


