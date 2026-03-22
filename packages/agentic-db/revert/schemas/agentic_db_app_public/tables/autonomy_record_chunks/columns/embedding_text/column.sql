-- Revert: schemas/agentic_db_app_public/tables/autonomy_record_chunks/columns/embedding_text/column


ALTER TABLE "agentic_db_app_public".autonomy_record_chunks 
  DROP COLUMN embedding_text RESTRICT;


