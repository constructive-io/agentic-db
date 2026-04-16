-- Revert: schemas/agentic_db_app_public/tables/agent_logs/columns/updated_at/alterations/alt0000015446


ALTER TABLE agentic_db_app_public.agent_logs 
  ALTER COLUMN updated_at DROP NOT NULL;


