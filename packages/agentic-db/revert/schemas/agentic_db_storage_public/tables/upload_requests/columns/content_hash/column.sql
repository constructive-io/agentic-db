-- Revert: schemas/agentic_db_storage_public/tables/upload_requests/columns/content_hash/column


ALTER TABLE agentic_db_storage_public.upload_requests 
  DROP COLUMN content_hash RESTRICT;


