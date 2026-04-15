-- Revert: schemas/agentic_db_storage_public/tables/files/columns/mime_type/column


ALTER TABLE agentic_db_storage_public.files 
  DROP COLUMN mime_type RESTRICT;


