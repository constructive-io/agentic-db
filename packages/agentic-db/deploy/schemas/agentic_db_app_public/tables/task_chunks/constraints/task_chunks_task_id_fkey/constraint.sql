-- Deploy: schemas/agentic_db_app_public/tables/task_chunks/constraints/task_chunks_task_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tasks/table
-- requires: schemas/agentic_db_app_public/tables/task_chunks/table
-- requires: schemas/agentic_db_app_public/tables/tasks/indexes/tasks_parent_task_id_idx


ALTER TABLE "agentic_db_app_public".task_chunks 
  ADD CONSTRAINT task_chunks_task_id_fkey 
    FOREIGN KEY(task_id) 
    REFERENCES "agentic_db_app_public".tasks (id) 
    ON DELETE CASCADE;

