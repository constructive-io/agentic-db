-- Revert: schemas/agentic_db_app_public/tables/documents_chunks/columns/embedding/column


ALTER TABLE agentic_db_app_public.documents_chunks 
  DROP COLUMN embedding RESTRICT;


