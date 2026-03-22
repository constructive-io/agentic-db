-- Revert: schemas/agentic_db_app_public/tables/agent_task_chunks/columns/agent_task_id/alterations/alt0000005961


ALTER TABLE agentic_db_app_public.agent_task_chunks 
  ALTER COLUMN agent_task_id DROP NOT NULL;


