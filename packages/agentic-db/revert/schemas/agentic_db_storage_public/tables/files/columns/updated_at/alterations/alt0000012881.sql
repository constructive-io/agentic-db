-- Revert: schemas/agentic_db_storage_public/tables/files/columns/updated_at/alterations/alt0000012881


ALTER TABLE agentic_db_storage_public.files 
  ALTER COLUMN updated_at DROP DEFAULT;


