-- Revert: schemas/agent_db_app_public/tables/habits/columns/tags/column


ALTER TABLE agent_db_app_public.habits 
  DROP COLUMN tags RESTRICT;


