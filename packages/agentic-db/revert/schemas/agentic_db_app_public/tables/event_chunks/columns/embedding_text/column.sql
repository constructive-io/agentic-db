-- Revert: schemas/agentic_db_app_public/tables/event_chunks/columns/embedding_text/column


ALTER TABLE "agentic_db_app_public".event_chunks 
  DROP COLUMN embedding_text RESTRICT;


