-- Revert: schemas/agentic_db_app_public/tables/recipe_chunks/columns/recipe_id/alterations/alt0000004705


ALTER TABLE agentic_db_app_public.recipe_chunks 
  ALTER COLUMN recipe_id DROP NOT NULL;


