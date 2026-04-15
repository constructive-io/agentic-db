-- Revert: schemas/agentic_db_storage_public/tables/upload_requests/columns/owner_id/alterations/alt0000012916


ALTER TABLE agentic_db_storage_public.upload_requests 
  ALTER COLUMN owner_id DROP NOT NULL;


