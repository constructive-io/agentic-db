-- Revert: schemas/agentic_db_app_public/tables/recipes/columns/tags/column


ALTER TABLE agentic_db_app_public.recipes 
  DROP COLUMN tags RESTRICT;


