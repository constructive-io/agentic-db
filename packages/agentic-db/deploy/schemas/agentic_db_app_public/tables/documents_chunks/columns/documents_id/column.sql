-- Deploy: schemas/agentic_db_app_public/tables/documents_chunks/columns/documents_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/documents_chunks/table
-- requires: schemas/agentic_db_app_public/tables/autonomy_records/indexes/autonomy_records_source_idx


ALTER TABLE agentic_db_app_public.documents_chunks 
  ADD COLUMN documents_id uuid;

