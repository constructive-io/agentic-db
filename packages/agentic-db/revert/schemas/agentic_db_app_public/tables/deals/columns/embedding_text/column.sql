-- Revert: schemas/agentic_db_app_public/tables/deals/columns/embedding_text/column


ALTER TABLE "agentic_db_app_public".deals 
  DROP COLUMN embedding_text RESTRICT;


