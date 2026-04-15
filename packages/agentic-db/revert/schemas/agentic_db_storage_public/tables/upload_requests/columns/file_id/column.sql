-- Revert: schemas/agentic_db_storage_public/tables/upload_requests/columns/file_id/column


ALTER TABLE agentic_db_storage_public.upload_requests 
  DROP COLUMN file_id RESTRICT;


