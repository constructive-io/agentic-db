-- Revert: schemas/agentic_db_storage_public/tables/files/columns/is_public/column


ALTER TABLE agentic_db_storage_public.files 
  DROP COLUMN is_public RESTRICT;


