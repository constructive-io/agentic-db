-- Revert: schemas/agent_db_app_public/tables/habits/columns/name/column


ALTER TABLE agent_db_app_public.habits 
  DROP COLUMN name RESTRICT;


