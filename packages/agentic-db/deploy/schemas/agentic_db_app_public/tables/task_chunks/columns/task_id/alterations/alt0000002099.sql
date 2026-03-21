-- Deploy: schemas/agentic_db_app_public/tables/task_chunks/columns/task_id/alterations/alt0000002099
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/task_chunks/table
-- requires: schemas/agentic_db_app_public/tables/task_chunks/columns/task_id/column
-- requires: schemas/agentic_db_app_public/tables/tasks/indexes/tasks_parent_task_id_idx


ALTER TABLE "agentic_db_app_public".task_chunks 
  ALTER COLUMN task_id SET NOT NULL;

