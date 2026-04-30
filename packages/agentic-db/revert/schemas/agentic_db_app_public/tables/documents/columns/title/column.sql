-- Revert: schemas/agentic_db_app_public/tables/documents/columns/title/column


ALTER TABLE agentic_db_app_public.documents 
  DROP COLUMN title RESTRICT;


