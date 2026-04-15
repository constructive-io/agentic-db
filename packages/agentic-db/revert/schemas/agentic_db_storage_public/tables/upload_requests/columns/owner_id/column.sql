-- Revert: schemas/agentic_db_storage_public/tables/upload_requests/columns/owner_id/column


ALTER TABLE agentic_db_storage_public.upload_requests 
  DROP COLUMN owner_id RESTRICT;


