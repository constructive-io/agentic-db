-- Deploy: schemas/agentic_db_app_public/tables/documents_chunks/indexes/documents_chunks_created_at_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/documents_chunks/table
-- requires: schemas/agentic_db_app_public/tables/documents_chunks/columns/created_at/column
-- requires: schemas/agentic_db_app_public/tables/autonomy_records/indexes/autonomy_records_source_idx


CREATE INDEX documents_chunks_created_at_idx ON agentic_db_app_public.documents_chunks ( created_at );

