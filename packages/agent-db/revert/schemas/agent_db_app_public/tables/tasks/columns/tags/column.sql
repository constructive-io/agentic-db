-- Revert: schemas/agent_db_app_public/tables/tasks/columns/tags/column


ALTER TABLE agent_db_app_public.tasks 
  DROP COLUMN tags RESTRICT;


