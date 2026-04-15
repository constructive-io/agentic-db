-- Revert: schemas/agentic_db_storage_public/tables/files/columns/created_at/alterations/alt0000012880


ALTER TABLE agentic_db_storage_public.files 
  ALTER COLUMN created_at DROP DEFAULT;


