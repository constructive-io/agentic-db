-- Revert: schemas/agentic_db_storage_public/tables/upload_requests/columns/key/alterations/alt0000012918


ALTER TABLE agentic_db_storage_public.upload_requests 
  ALTER COLUMN key DROP NOT NULL;


