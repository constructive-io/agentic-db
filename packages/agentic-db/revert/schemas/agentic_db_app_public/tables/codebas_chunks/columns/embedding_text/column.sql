-- Revert: schemas/agentic_db_app_public/tables/codebas_chunks/columns/embedding_text/column


ALTER TABLE "agentic_db_app_public".codebas_chunks 
  DROP COLUMN embedding_text RESTRICT;


