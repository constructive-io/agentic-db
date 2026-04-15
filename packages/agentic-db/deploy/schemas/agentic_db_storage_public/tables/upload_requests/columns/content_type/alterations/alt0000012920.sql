-- Deploy: schemas/agentic_db_storage_public/tables/upload_requests/columns/content_type/alterations/alt0000012920
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_storage_public/schema
-- requires: schemas/agentic_db_storage_public/tables/upload_requests/table
-- requires: schemas/agentic_db_storage_public/tables/upload_requests/columns/content_type/column


ALTER TABLE agentic_db_storage_public.upload_requests 
  ALTER COLUMN content_type SET NOT NULL;

