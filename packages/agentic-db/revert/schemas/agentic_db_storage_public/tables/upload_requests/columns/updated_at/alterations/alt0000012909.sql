-- Revert: schemas/agentic_db_storage_public/tables/upload_requests/columns/updated_at/alterations/alt0000012909


ALTER TABLE agentic_db_storage_public.upload_requests 
  ALTER COLUMN updated_at DROP DEFAULT;


