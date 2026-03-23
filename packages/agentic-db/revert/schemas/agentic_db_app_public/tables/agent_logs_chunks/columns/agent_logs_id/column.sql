-- Revert: schemas/agentic_db_app_public/tables/agent_logs_chunks/columns/agent_logs_id/column


ALTER TABLE "agentic_db_app_public".agent_logs_chunks 
  DROP COLUMN agent_logs_id RESTRICT;


