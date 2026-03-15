-- Revert: schemas/agent_db_app_public/tables/tasks/columns/requires_approval/column


ALTER TABLE agent_db_app_public.tasks 
  DROP COLUMN requires_approval RESTRICT;


