-- Revert: schemas/agentic_db_app_public/tables/documents/columns/repo_name/column


ALTER TABLE agentic_db_app_public.documents 
  DROP COLUMN repo_name RESTRICT;


