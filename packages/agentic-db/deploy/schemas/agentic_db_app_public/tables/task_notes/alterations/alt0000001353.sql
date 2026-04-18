-- Deploy: schemas/agentic_db_app_public/tables/task_notes/alterations/alt0000001353
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/task_notes/table
-- requires: schemas/agentic_db_app_public/tables/autonomy_records/indexes/autonomy_records_source_idx


ALTER TABLE agentic_db_app_public.task_notes 
  DISABLE ROW LEVEL SECURITY;

