-- Revert: schemas/agent_db_app_public/tables/recipes/columns/cook_time_minutes/column


ALTER TABLE agent_db_app_public.recipes 
  DROP COLUMN cook_time_minutes RESTRICT;


