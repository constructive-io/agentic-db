-- Revert: schemas/agentic_db_app_public/tables/recipes/columns/ingredients/column


ALTER TABLE agentic_db_app_public.recipes 
  DROP COLUMN ingredients RESTRICT;


