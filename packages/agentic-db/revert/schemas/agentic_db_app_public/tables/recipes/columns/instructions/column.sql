-- Revert: schemas/agentic_db_app_public/tables/recipes/columns/instructions/column


ALTER TABLE agentic_db_app_public.recipes 
  DROP COLUMN instructions RESTRICT;


