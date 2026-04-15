-- Revert: schemas/agentic_db_storage_public/tables/files/columns/size/column


ALTER TABLE agentic_db_storage_public.files 
  DROP COLUMN size RESTRICT;


