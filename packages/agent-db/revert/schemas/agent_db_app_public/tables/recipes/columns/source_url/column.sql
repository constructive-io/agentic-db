-- Revert: schemas/agent_db_app_public/tables/recipes/columns/source_url/column


ALTER TABLE agent_db_app_public.recipes 
  DROP COLUMN source_url RESTRICT;


