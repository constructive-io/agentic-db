-- Revert: schemas/agentic_db_storage_public/tables/upload_requests/columns/confirmed_at/column


ALTER TABLE agentic_db_storage_public.upload_requests 
  DROP COLUMN confirmed_at RESTRICT;


