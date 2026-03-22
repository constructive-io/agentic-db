-- Revert: schemas/agentic_db_app_public/tables/contact_chunks/columns/embedding_text/column


ALTER TABLE "agentic_db_app_public".contact_chunks 
  DROP COLUMN embedding_text RESTRICT;


