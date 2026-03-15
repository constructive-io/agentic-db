-- Revert: schemas/agent_db_app_public/tables/tasks/constraints/tasks_parent_task_id_fkey/constraint


ALTER TABLE agent_db_app_public.tasks 
  DROP CONSTRAINT tasks_parent_task_id_fkey;


