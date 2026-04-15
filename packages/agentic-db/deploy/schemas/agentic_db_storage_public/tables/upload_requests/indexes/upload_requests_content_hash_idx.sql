-- Deploy: schemas/agentic_db_storage_public/tables/upload_requests/indexes/upload_requests_content_hash_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_storage_public/schema
-- requires: schemas/agentic_db_storage_public/tables/upload_requests/table
-- requires: schemas/agentic_db_storage_public/tables/upload_requests/columns/content_hash/column


CREATE INDEX upload_requests_content_hash_idx ON agentic_db_storage_public.upload_requests USING BTREE ( content_hash );

