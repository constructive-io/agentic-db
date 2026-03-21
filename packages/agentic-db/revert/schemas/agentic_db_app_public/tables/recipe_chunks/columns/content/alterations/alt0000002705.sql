-- Revert: schemas/agentic_db_app_public/tables/recipe_chunks/columns/content/alterations/alt0000002705


ALTER TABLE "agentic_db_app_public".recipe_chunks 
  ALTER COLUMN content DROP NOT NULL;


