-- Revert: schemas/agentic_db_storage_public/tables/upload_requests/columns/expires_at/column


ALTER TABLE agentic_db_storage_public.upload_requests 
  DROP COLUMN expires_at RESTRICT;


