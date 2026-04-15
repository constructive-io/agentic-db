-- Revert: schemas/agentic_db_storage_public/tables/upload_requests/columns/status/column


ALTER TABLE agentic_db_storage_public.upload_requests 
  DROP COLUMN status RESTRICT;


