-- Revert: schemas/agentic_db_storage_public/tables/files/columns/tags/column


ALTER TABLE agentic_db_storage_public.files 
  DROP COLUMN tags RESTRICT;


