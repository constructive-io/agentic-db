-- Deploy: schemas/agentic_db_app_public/tables/tasks/constraints/tasks_parent_task_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tasks/table
-- requires: schemas/agentic_db_app_public/tables/skill_executions/columns/error/column


ALTER TABLE agentic_db_app_public.tasks 
  ADD CONSTRAINT tasks_parent_task_id_fkey 
    FOREIGN KEY(parent_task_id) 
    REFERENCES agentic_db_app_public.tasks (id) 
    ON DELETE SET NULL;

