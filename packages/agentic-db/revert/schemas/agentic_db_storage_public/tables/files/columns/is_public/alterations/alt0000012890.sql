-- Revert: schemas/agentic_db_storage_public/tables/files/columns/is_public/alterations/alt0000012890


ALTER TABLE agentic_db_storage_public.files 
  ALTER COLUMN is_public DROP NOT NULL;


