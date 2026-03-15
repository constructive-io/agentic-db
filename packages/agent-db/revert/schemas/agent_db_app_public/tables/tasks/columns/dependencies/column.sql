-- Revert: schemas/agent_db_app_public/tables/tasks/columns/dependencies/column


ALTER TABLE agent_db_app_public.tasks 
  DROP COLUMN dependencies RESTRICT;


