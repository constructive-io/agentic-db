-- Revert: schemas/agentic_db_app_public/tables/files/columns/path/column


ALTER TABLE agentic_db_app_public.files 
  DROP COLUMN path RESTRICT;


