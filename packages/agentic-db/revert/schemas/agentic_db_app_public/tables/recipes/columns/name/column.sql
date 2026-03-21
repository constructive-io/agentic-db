-- Revert: schemas/agentic_db_app_public/tables/recipes/columns/name/column


ALTER TABLE agentic_db_app_public.recipes 
  DROP COLUMN name RESTRICT;


