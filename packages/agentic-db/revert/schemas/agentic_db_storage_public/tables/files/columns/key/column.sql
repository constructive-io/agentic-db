-- Revert: schemas/agentic_db_storage_public/tables/files/columns/key/column


ALTER TABLE agentic_db_storage_public.files 
  DROP COLUMN key RESTRICT;


