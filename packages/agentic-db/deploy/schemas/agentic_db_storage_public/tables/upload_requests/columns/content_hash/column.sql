-- Deploy: schemas/agentic_db_storage_public/tables/upload_requests/columns/content_hash/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_storage_public/schema
-- requires: schemas/agentic_db_storage_public/tables/upload_requests/table


ALTER TABLE agentic_db_storage_public.upload_requests 
  ADD COLUMN content_hash text;

