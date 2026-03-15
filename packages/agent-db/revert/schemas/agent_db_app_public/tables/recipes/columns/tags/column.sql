-- Revert: schemas/agent_db_app_public/tables/recipes/columns/tags/column


ALTER TABLE agent_db_app_public.recipes 
  DROP COLUMN tags RESTRICT;


