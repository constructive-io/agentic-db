-- Revert: schemas/agentic_db_storage_public/tables/upload_requests/columns/key/column


ALTER TABLE agentic_db_storage_public.upload_requests 
  DROP COLUMN key RESTRICT;


