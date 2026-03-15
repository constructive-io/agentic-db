-- Revert: schemas/agent_db_app_public/tables/recipes/columns/image_url/column


ALTER TABLE agent_db_app_public.recipes 
  DROP COLUMN image_url RESTRICT;


