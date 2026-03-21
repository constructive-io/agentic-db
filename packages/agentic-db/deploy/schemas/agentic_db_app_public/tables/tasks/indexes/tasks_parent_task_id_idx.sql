-- Deploy: schemas/agentic_db_app_public/tables/tasks/indexes/tasks_parent_task_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tasks/table
-- requires: schemas/agentic_db_app_public/tables/tasks/columns/parent_task_id/column
-- requires: schemas/agentic_db_app_public/tables/skill_executions/columns/error/column


CREATE INDEX tasks_parent_task_id_idx ON agentic_db_app_public.tasks USING BTREE ( parent_task_id );

