-- Deploy: schemas/agentic_db_storage_public/tables/upload_requests/indexes/upload_requests_file_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_storage_public/schema
-- requires: schemas/agentic_db_storage_public/tables/upload_requests/table
-- requires: schemas/agentic_db_storage_public/tables/upload_requests/columns/file_id/column


CREATE INDEX upload_requests_file_id_idx ON agentic_db_storage_public.upload_requests USING BTREE ( file_id );

