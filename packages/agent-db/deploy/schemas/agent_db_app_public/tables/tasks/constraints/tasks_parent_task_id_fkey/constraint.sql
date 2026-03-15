-- Deploy: schemas/agent_db_app_public/tables/tasks/constraints/tasks_parent_task_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/tasks/table
-- requires: schemas/agent_db_app_public/tables/feedback/columns/source/column


ALTER TABLE agent_db_app_public.tasks 
  ADD CONSTRAINT tasks_parent_task_id_fkey 
    FOREIGN KEY(parent_task_id) 
    REFERENCES agent_db_app_public.tasks (id) 
    ON DELETE SET NULL;

