-- Revert: schemas/agent_db_app_public/tables/recipes/columns/ingredients/column


ALTER TABLE agent_db_app_public.recipes 
  DROP COLUMN ingredients RESTRICT;


