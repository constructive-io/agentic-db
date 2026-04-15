-- Revert: schemas/agentic_db_storage_public/tables/upload_requests/columns/actor_id/alterations/alt0000012912


ALTER TABLE agentic_db_storage_public.upload_requests 
  ALTER COLUMN actor_id DROP NOT NULL;


