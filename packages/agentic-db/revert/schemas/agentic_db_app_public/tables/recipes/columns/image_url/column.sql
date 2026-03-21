-- Revert: schemas/agentic_db_app_public/tables/recipes/columns/image_url/column


ALTER TABLE agentic_db_app_public.recipes 
  DROP COLUMN image_url RESTRICT;


