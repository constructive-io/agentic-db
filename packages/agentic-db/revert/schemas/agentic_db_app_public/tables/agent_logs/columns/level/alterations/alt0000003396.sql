-- Revert: schemas/agentic_db_app_public/tables/agent_logs/columns/level/alterations/alt0000003396


ALTER TABLE agentic_db_app_public.agent_logs 
  ALTER COLUMN level DROP NOT NULL;


