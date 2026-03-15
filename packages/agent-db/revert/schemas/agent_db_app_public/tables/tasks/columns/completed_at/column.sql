-- Revert: schemas/agent_db_app_public/tables/tasks/columns/completed_at/column


ALTER TABLE agent_db_app_public.tasks 
  DROP COLUMN completed_at RESTRICT;


