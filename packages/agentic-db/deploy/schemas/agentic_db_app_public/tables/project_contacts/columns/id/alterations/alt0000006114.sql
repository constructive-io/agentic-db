-- Deploy: schemas/agentic_db_app_public/tables/project_contacts/columns/id/alterations/alt0000006114
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/project_contacts/table
-- requires: schemas/agentic_db_app_public/tables/project_contacts/columns/id/column
-- requires: schemas/agentic_db_app_public/tables/autonomy_records_chunks/indexes/autonomy_records_chunks_chunk_index_idx


ALTER TABLE agentic_db_app_public.project_contacts 
  ALTER COLUMN id SET NOT NULL;

