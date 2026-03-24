-- Revert: schemas/agentic_db_app_public/tables/conversations/columns/embedding_text/column


ALTER TABLE agentic_db_app_public.conversations 
  DROP COLUMN embedding_text RESTRICT;


