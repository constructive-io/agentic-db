-- Revert: schemas/agentic_db_app_public/tables/agent_tasks/columns/priority/column


ALTER TABLE agentic_db_app_public.agent_tasks 
  DROP COLUMN priority RESTRICT;


