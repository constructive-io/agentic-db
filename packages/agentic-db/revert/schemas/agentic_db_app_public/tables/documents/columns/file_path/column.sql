-- Revert: schemas/agentic_db_app_public/tables/documents/columns/file_path/column


ALTER TABLE agentic_db_app_public.documents 
  DROP COLUMN file_path RESTRICT;


