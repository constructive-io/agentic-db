-- Revert: schemas/agentic_db_app_public/tables/recipes/columns/source_url/column


ALTER TABLE agentic_db_app_public.recipes 
  DROP COLUMN source_url RESTRICT;


