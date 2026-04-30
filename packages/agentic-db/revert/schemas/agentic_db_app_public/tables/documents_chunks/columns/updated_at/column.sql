-- Revert: schemas/agentic_db_app_public/tables/documents_chunks/columns/updated_at/column


ALTER TABLE agentic_db_app_public.documents_chunks 
  DROP COLUMN updated_at RESTRICT;


