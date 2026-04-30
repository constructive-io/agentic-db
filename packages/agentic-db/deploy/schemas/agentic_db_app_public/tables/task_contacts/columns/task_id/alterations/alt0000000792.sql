-- Deploy: schemas/agentic_db_app_public/tables/task_contacts/columns/task_id/alterations/alt0000000792
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/task_contacts/table
-- requires: schemas/agentic_db_app_public/tables/task_contacts/columns/task_id/column
-- requires: schemas/agentic_db_app_public/tables/documents/indexes/documents_file_path_idx


ALTER TABLE agentic_db_app_public.task_contacts 
  ALTER COLUMN task_id SET NOT NULL;

