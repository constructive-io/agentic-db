-- Revert: schemas/agentic_db_storage_public/tables/upload_requests/columns/expires_at/alterations/alt0000012924


ALTER TABLE agentic_db_storage_public.upload_requests 
  ALTER COLUMN expires_at DROP NOT NULL;


