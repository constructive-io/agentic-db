-- Revert: schemas/agentic_db_storage_public/tables/files/columns/status/column


ALTER TABLE agentic_db_storage_public.files 
  DROP COLUMN status RESTRICT;


