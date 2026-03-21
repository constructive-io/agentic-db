-- Revert: schemas/agentic_db_app_public/tables/recipe_chunks/columns/updated_at/alterations/alt0000002702


ALTER TABLE "agentic_db_app_public".recipe_chunks 
  ALTER COLUMN updated_at DROP NOT NULL;


