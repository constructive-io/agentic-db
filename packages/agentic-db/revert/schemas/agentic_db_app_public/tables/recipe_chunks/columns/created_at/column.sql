-- Revert: schemas/agentic_db_app_public/tables/recipe_chunks/columns/created_at/column


ALTER TABLE agentic_db_app_public.recipe_chunks 
  DROP COLUMN created_at RESTRICT;


