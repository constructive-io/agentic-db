-- Revert: schemas/agentic_db_app_public/tables/idea_chunks/columns/embedding_text/column


ALTER TABLE agentic_db_app_public.idea_chunks 
  DROP COLUMN embedding_text RESTRICT;


