-- Revert: schemas/agentic_db_storage_public/tables/upload_requests/columns/created_at/alterations/alt0000012908


ALTER TABLE agentic_db_storage_public.upload_requests 
  ALTER COLUMN created_at DROP DEFAULT;


