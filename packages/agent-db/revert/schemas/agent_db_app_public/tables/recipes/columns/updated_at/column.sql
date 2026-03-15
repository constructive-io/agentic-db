-- Revert: schemas/agent_db_app_public/tables/recipes/columns/updated_at/column


ALTER TABLE agent_db_app_public.recipes 
  DROP COLUMN updated_at RESTRICT;


