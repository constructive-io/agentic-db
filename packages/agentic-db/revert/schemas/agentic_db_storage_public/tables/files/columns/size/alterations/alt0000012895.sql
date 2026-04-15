-- Revert: schemas/agentic_db_storage_public/tables/files/columns/size/alterations/alt0000012895


ALTER TABLE agentic_db_storage_public.files 
  ALTER COLUMN size DROP NOT NULL;


