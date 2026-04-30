-- Deploy: schemas/agentic_db_app_public/tables/documents_chunks/columns/chunk_index/alterations/alt0000000780
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/documents_chunks/table
-- requires: schemas/agentic_db_app_public/tables/documents_chunks/columns/chunk_index/column
-- requires: schemas/agentic_db_app_public/tables/autonomy_records/indexes/autonomy_records_source_idx



ALTER TABLE agentic_db_app_public.documents_chunks 
    ALTER COLUMN chunk_index SET DEFAULT 0;

