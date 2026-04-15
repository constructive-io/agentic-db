-- Revert: schemas/agentic_db_storage_public/tables/upload_requests/columns/created_at/column


ALTER TABLE agentic_db_storage_public.upload_requests 
  DROP COLUMN created_at RESTRICT;


