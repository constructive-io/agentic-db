-- Revert: schemas/agentic_db_storage_public/tables/upload_requests/columns/id/alterations/alt0000012906


ALTER TABLE agentic_db_storage_public.upload_requests 
  ALTER COLUMN id DROP NOT NULL;


