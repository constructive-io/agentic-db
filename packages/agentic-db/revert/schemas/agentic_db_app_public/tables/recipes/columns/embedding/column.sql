-- Revert: schemas/agentic_db_app_public/tables/recipes/columns/embedding/column


ALTER TABLE "agentic_db_app_public".recipes 
  DROP COLUMN embedding RESTRICT;


