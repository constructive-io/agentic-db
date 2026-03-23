-- Revert: schemas/agentic_db_app_public/tables/agent_tasks_chunks/columns/agent_tasks_id/alterations/alt0000002909


ALTER TABLE agentic_db_app_public.agent_tasks_chunks 
  ALTER COLUMN agent_tasks_id DROP NOT NULL;


