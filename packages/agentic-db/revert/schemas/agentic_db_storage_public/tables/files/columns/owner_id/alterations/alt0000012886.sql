-- Revert: schemas/agentic_db_storage_public/tables/files/columns/owner_id/alterations/alt0000012886


ALTER TABLE agentic_db_storage_public.files 
  ALTER COLUMN owner_id DROP NOT NULL;


