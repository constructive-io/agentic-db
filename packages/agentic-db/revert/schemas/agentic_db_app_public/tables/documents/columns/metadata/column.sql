-- Revert: schemas/agentic_db_app_public/tables/documents/columns/metadata/column


ALTER TABLE agentic_db_app_public.documents 
  DROP COLUMN metadata RESTRICT;


