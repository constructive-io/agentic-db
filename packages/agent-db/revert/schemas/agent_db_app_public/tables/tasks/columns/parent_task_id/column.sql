-- Revert: schemas/agent_db_app_public/tables/tasks/columns/parent_task_id/column


ALTER TABLE agent_db_app_public.tasks 
  DROP COLUMN parent_task_id RESTRICT;


