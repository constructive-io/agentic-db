-- Deploy: schemas/agentic_db_storage_public/tables/upload_requests/columns/content_hash/alterations/alt0000012922
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_storage_public/schema
-- requires: schemas/agentic_db_storage_public/tables/upload_requests/table
-- requires: schemas/agentic_db_storage_public/tables/upload_requests/columns/content_hash/column


ALTER TABLE agentic_db_storage_public.upload_requests 
  ALTER COLUMN content_hash SET NOT NULL;

