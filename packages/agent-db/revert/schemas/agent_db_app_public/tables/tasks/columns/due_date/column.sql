-- Revert: schemas/agent_db_app_public/tables/tasks/columns/due_date/column


ALTER TABLE agent_db_app_public.tasks 
  DROP COLUMN due_date RESTRICT;


