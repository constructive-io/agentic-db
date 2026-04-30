-- Revert: schemas/agentic_db_app_public/tables/documents_chunks/columns/documents_id/column


ALTER TABLE agentic_db_app_public.documents_chunks 
  DROP COLUMN documents_id RESTRICT;


