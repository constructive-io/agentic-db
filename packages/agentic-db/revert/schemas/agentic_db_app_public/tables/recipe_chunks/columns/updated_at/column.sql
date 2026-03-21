-- Revert: schemas/agentic_db_app_public/tables/recipe_chunks/columns/updated_at/column


ALTER TABLE "agentic_db_app_public".recipe_chunks 
  DROP COLUMN updated_at RESTRICT;


