-- Revert: schemas/agentic_db_app_public/tables/interaction_chunks/columns/embedding_text/column


ALTER TABLE "agentic_db_app_public".interaction_chunks 
  DROP COLUMN embedding_text RESTRICT;


