-- Deploy: schemas/agentic_db_storage_public/tables/upload_requests/columns/expires_at/alterations/alt0000012924
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_storage_public/schema
-- requires: schemas/agentic_db_storage_public/tables/upload_requests/table
-- requires: schemas/agentic_db_storage_public/tables/upload_requests/columns/expires_at/column


ALTER TABLE agentic_db_storage_public.upload_requests 
  ALTER COLUMN expires_at SET NOT NULL;

