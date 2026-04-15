-- Revert: schemas/agentic_db_storage_public/tables/upload_requests/columns/content_hash/alterations/alt0000012922


ALTER TABLE agentic_db_storage_public.upload_requests 
  ALTER COLUMN content_hash DROP NOT NULL;


