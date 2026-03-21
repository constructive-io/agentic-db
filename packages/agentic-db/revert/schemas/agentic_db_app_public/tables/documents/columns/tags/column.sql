-- Revert: schemas/agentic_db_app_public/tables/documents/columns/tags/column


ALTER TABLE agentic_db_app_public.documents 
  DROP COLUMN tags RESTRICT;


