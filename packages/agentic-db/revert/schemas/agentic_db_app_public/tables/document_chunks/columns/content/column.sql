-- Revert: schemas/agentic_db_app_public/tables/document_chunks/columns/content/column


ALTER TABLE agentic_db_app_public.document_chunks 
  DROP COLUMN content RESTRICT;


