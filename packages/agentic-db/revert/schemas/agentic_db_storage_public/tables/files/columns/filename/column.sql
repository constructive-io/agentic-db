-- Revert: schemas/agentic_db_storage_public/tables/files/columns/filename/column


ALTER TABLE agentic_db_storage_public.files 
  DROP COLUMN filename RESTRICT;


