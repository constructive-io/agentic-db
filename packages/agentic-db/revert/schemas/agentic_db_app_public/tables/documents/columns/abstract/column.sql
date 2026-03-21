-- Revert: schemas/agentic_db_app_public/tables/documents/columns/abstract/column


ALTER TABLE agentic_db_app_public.documents 
  DROP COLUMN abstract RESTRICT;


