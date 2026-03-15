-- Revert: schemas/agent_db_app_public/tables/tasks/columns/id/column


ALTER TABLE agent_db_app_public.tasks 
  DROP COLUMN id RESTRICT;


