-- Revert: schemas/agentic_db_app_public/tables/document_chunks/columns/embedding/column


ALTER TABLE agentic_db_app_public.document_chunks 
  DROP COLUMN embedding RESTRICT;


