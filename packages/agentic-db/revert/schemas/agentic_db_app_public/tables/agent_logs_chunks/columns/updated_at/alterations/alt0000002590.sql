-- Revert: schemas/agentic_db_app_public/tables/agent_logs_chunks/columns/updated_at/alterations/alt0000002590


ALTER TABLE agentic_db_app_public.agent_logs_chunks 
  ALTER COLUMN updated_at DROP DEFAULT;


