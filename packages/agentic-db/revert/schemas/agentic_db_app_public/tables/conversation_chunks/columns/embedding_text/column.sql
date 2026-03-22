-- Revert: schemas/agentic_db_app_public/tables/conversation_chunks/columns/embedding_text/column


ALTER TABLE "agentic_db_app_public".conversation_chunks 
  DROP COLUMN embedding_text RESTRICT;


