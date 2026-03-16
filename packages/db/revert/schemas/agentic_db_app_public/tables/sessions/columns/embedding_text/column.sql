-- Revert: schemas/agentic_db_app_public/tables/sessions/columns/embedding_text/column


ALTER TABLE "agentic_db_app_public".sessions 
  DROP COLUMN embedding_text RESTRICT;


