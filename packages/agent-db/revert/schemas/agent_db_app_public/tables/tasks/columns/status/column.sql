-- Revert: schemas/agent_db_app_public/tables/tasks/columns/status/column


ALTER TABLE agent_db_app_public.tasks 
  DROP COLUMN status RESTRICT;


