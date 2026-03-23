-- Revert: schemas/agentic_db_app_public/tables/agent_tasks_chunks/columns/content/alterations/alt0000002910


ALTER TABLE agentic_db_app_public.agent_tasks_chunks 
  ALTER COLUMN content DROP NOT NULL;


