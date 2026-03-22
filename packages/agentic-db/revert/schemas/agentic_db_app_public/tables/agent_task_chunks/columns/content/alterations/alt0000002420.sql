-- Revert: schemas/agentic_db_app_public/tables/agent_task_chunks/columns/content/alterations/alt0000002420


ALTER TABLE agentic_db_app_public.agent_task_chunks 
  ALTER COLUMN content DROP NOT NULL;


