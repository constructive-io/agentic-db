-- Revert: schemas/agentic_db_app_public/tables/recipes/columns/description/column


ALTER TABLE agentic_db_app_public.recipes 
  DROP COLUMN description RESTRICT;


