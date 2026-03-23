-- Revert: schemas/agentic_db_app_public/tables/agent_logs_chunks/columns/content/alterations/alt0000001223


ALTER TABLE "agentic_db_app_public".agent_logs_chunks 
  ALTER COLUMN content DROP NOT NULL;


