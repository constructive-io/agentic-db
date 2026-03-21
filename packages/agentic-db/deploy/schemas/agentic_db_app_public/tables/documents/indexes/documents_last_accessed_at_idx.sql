-- Deploy: schemas/agentic_db_app_public/tables/documents/indexes/documents_last_accessed_at_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/documents/table
-- requires: schemas/agentic_db_app_public/tables/documents/columns/last_accessed_at/column
-- requires: schemas/agentic_db_app_public/tables/documents/indexes/documents_active_count_idx


CREATE INDEX documents_last_accessed_at_idx ON agentic_db_app_public.documents USING BTREE ( last_accessed_at );

