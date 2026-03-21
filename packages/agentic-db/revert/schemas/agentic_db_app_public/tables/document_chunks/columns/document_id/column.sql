-- Revert: schemas/agentic_db_app_public/tables/document_chunks/columns/document_id/column


ALTER TABLE agentic_db_app_public.document_chunks 
  DROP COLUMN document_id RESTRICT;


