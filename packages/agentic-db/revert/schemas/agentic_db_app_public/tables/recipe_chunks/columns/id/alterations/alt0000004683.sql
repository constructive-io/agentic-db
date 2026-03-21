-- Revert: schemas/agentic_db_app_public/tables/recipe_chunks/columns/id/alterations/alt0000004683


ALTER TABLE agentic_db_app_public.recipe_chunks 
  ALTER COLUMN id DROP NOT NULL;


