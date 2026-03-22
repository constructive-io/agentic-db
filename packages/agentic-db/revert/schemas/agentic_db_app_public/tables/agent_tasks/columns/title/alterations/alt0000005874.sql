-- Revert: schemas/agentic_db_app_public/tables/agent_tasks/columns/title/alterations/alt0000005874


ALTER TABLE agentic_db_app_public.agent_tasks 
  ALTER COLUMN title DROP NOT NULL;


