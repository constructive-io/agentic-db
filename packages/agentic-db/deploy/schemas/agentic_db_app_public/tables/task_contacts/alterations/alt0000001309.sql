-- Deploy: schemas/agentic_db_app_public/tables/task_contacts/alterations/alt0000001309
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/task_contacts/table
-- requires: schemas/agentic_db_app_public/tables/autonomy_records/indexes/autonomy_records_source_idx


ALTER TABLE agentic_db_app_public.task_contacts 
  DISABLE ROW LEVEL SECURITY;

