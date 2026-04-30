-- Revert: schemas/agentic_db_app_public/tables/documents/columns/updated_at/column


ALTER TABLE agentic_db_app_public.documents 
  DROP COLUMN updated_at RESTRICT;


