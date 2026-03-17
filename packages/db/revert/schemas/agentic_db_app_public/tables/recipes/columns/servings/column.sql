-- Revert: schemas/agentic_db_app_public/tables/recipes/columns/servings/column


ALTER TABLE "agentic_db_app_public".recipes 
  DROP COLUMN servings RESTRICT;


