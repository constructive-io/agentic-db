-- Revert: schemas/agentic_db_app_public/tables/threads/columns/embedding_text/column


ALTER TABLE "agentic_db_app_public".threads 
  DROP COLUMN embedding_text RESTRICT;


