-- Revert: schemas/agentic_db_app_public/tables/recipe_chunks/columns/content/column


ALTER TABLE agentic_db_app_public.recipe_chunks 
  DROP COLUMN content RESTRICT;


