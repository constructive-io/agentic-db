-- Revert: schemas/agentic_db_app_public/tables/agent_logs_chunks/columns/created_at/alterations/alt0000001264


ALTER TABLE "agentic_db_app_public".agent_logs_chunks 
  ALTER COLUMN created_at DROP DEFAULT;


