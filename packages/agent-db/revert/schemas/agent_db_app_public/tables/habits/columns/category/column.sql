-- Revert: schemas/agent_db_app_public/tables/habits/columns/category/column


ALTER TABLE agent_db_app_public.habits 
  DROP COLUMN category RESTRICT;


