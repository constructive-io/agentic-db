-- Revert: schemas/agentic_db_app_public/tables/agent_tasks/columns/completed_at/column


ALTER TABLE agentic_db_app_public.agent_tasks 
  DROP COLUMN completed_at RESTRICT;


