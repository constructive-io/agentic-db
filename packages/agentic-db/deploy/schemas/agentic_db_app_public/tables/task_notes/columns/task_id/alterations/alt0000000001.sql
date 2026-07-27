-- Deploy: schemas/agentic_db_app_public/tables/task_notes/columns/task_id/alterations/alt0000000001
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/task_notes/table
-- requires: schemas/agentic_db_app_public/tables/task_notes/columns/task_id/column


ALTER TABLE agentic_db_app_public.task_notes 
  ALTER COLUMN task_id SET NOT NULL;

