-- Revert: schemas/agentic_db_app_public/tables/agent_tasks/columns/entity_id/column


ALTER TABLE agentic_db_app_public.agent_tasks 
  DROP COLUMN entity_id RESTRICT;


