-- Revert: schemas/agentic_db_storage_public/tables/files/columns/mime_type/alterations/alt0000012893


ALTER TABLE agentic_db_storage_public.files 
  ALTER COLUMN mime_type DROP NOT NULL;


