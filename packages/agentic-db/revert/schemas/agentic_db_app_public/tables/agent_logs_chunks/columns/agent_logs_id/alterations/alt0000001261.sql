-- Revert: schemas/agentic_db_app_public/tables/agent_logs_chunks/columns/agent_logs_id/alterations/alt0000001261


ALTER TABLE "agentic_db_app_public".agent_logs_chunks 
  ALTER COLUMN agent_logs_id DROP NOT NULL;


