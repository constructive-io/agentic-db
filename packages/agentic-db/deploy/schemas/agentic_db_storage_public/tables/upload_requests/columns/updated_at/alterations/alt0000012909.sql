-- Deploy: schemas/agentic_db_storage_public/tables/upload_requests/columns/updated_at/alterations/alt0000012909
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_storage_public/schema
-- requires: schemas/agentic_db_storage_public/tables/upload_requests/table
-- requires: schemas/agentic_db_storage_public/tables/upload_requests/columns/updated_at/column


ALTER TABLE agentic_db_storage_public.upload_requests 
  ALTER COLUMN updated_at SET DEFAULT now();

