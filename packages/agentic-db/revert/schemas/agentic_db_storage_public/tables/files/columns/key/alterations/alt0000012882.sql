-- Revert: schemas/agentic_db_storage_public/tables/files/columns/key/alterations/alt0000012882


ALTER TABLE agentic_db_storage_public.files 
  ALTER COLUMN key DROP NOT NULL;


