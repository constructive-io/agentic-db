-- Deploy: schemas/agentic_db_app_public/tables/project_contacts/policies/enable_row_level_security
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/project_contacts/table
-- requires: schemas/agentic_db_app_public/tables/autonomy_records_chunks/indexes/autonomy_records_chunks_chunk_index_idx


ALTER TABLE agentic_db_app_public.project_contacts 
  ENABLE ROW LEVEL SECURITY;

