-- Revert: schemas/agent_db_app_public/tables/tasks/columns/approved_at/column


ALTER TABLE agent_db_app_public.tasks 
  DROP COLUMN approved_at RESTRICT;


