-- Deploy: schemas/agentic_db_app_public/tables/task_chunks/columns/content/alterations/alt0000004024
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/task_chunks/table
-- requires: schemas/agentic_db_app_public/tables/task_chunks/columns/content/column
-- requires: schemas/agentic_db_app_public/tables/task_chunks/columns/chunk_index/alterations/alt0000004023


ALTER TABLE agentic_db_app_public.task_chunks 
  ALTER COLUMN content SET NOT NULL;

