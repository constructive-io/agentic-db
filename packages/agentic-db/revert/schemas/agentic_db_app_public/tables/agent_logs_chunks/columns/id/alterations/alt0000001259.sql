-- Revert: schemas/agentic_db_app_public/tables/agent_logs_chunks/columns/id/alterations/alt0000001259


ALTER TABLE "agentic_db_app_public".agent_logs_chunks 
  ALTER COLUMN id DROP NOT NULL;


