-- Revert: schemas/agentic_db_app_public/tables/recipes/constraints/recipes_pkey/constraint


ALTER TABLE agentic_db_app_public.recipes 
  DROP CONSTRAINT recipes_pkey;


