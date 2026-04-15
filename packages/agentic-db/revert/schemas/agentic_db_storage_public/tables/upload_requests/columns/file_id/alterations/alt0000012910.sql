-- Revert: schemas/agentic_db_storage_public/tables/upload_requests/columns/file_id/alterations/alt0000012910


ALTER TABLE agentic_db_storage_public.upload_requests 
  ALTER COLUMN file_id DROP NOT NULL;


