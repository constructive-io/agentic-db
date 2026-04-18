-- Deploy: schemas/agentic_db_app_public/tables/task_projects/columns/task_id/alterations/alt0000001315
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/task_projects/table
-- requires: schemas/agentic_db_app_public/tables/task_projects/columns/task_id/column
-- requires: schemas/agentic_db_app_public/tables/autonomy_records/indexes/autonomy_records_source_idx


ALTER TABLE agentic_db_app_public.task_projects 
  ALTER COLUMN task_id SET NOT NULL;

