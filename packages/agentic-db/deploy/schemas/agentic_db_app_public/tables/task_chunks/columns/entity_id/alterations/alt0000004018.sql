-- Deploy: schemas/agentic_db_app_public/tables/task_chunks/columns/entity_id/alterations/alt0000004018
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/task_chunks/table
-- requires: schemas/agentic_db_app_public/tables/prompts/columns/embedding/column
-- requires: schemas/agentic_db_app_public/tables/task_chunks/columns/entity_id/column


ALTER TABLE agentic_db_app_public.task_chunks 
  ALTER COLUMN entity_id SET NOT NULL;

