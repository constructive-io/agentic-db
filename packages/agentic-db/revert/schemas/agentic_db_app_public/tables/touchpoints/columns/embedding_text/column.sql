-- Revert: schemas/agentic_db_app_public/tables/touchpoints/columns/embedding_text/column


ALTER TABLE "agentic_db_app_public".touchpoints 
  DROP COLUMN embedding_text RESTRICT;


