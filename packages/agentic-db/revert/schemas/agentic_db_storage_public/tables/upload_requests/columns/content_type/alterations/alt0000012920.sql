-- Revert: schemas/agentic_db_storage_public/tables/upload_requests/columns/content_type/alterations/alt0000012920


ALTER TABLE agentic_db_storage_public.upload_requests 
  ALTER COLUMN content_type DROP NOT NULL;


