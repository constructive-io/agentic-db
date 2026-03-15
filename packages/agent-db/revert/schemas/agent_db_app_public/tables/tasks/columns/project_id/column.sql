-- Revert: schemas/agent_db_app_public/tables/tasks/columns/project_id/column


ALTER TABLE agent_db_app_public.tasks 
  DROP COLUMN project_id RESTRICT;


