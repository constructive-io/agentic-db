-- Revert: schemas/agentic_db_storage_public/tables/files/columns/actor_id/alterations/alt0000012888


ALTER TABLE agentic_db_storage_public.files 
  ALTER COLUMN actor_id DROP NOT NULL;


