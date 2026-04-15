-- Revert: schemas/agentic_db_storage_public/tables/upload_requests/columns/bucket_id/alterations/alt0000012914


ALTER TABLE agentic_db_storage_public.upload_requests 
  ALTER COLUMN bucket_id DROP NOT NULL;


