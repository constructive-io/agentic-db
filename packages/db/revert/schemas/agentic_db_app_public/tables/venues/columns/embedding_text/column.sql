-- Revert: schemas/agentic_db_app_public/tables/venues/columns/embedding_text/column


ALTER TABLE "agentic_db_app_public".venues 
  DROP COLUMN embedding_text RESTRICT;


