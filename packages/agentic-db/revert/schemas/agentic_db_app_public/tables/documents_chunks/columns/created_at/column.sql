-- Revert: schemas/agentic_db_app_public/tables/documents_chunks/columns/created_at/column


ALTER TABLE agentic_db_app_public.documents_chunks 
  DROP COLUMN created_at RESTRICT;


