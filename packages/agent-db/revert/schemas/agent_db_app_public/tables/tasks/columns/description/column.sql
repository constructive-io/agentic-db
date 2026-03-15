-- Revert: schemas/agent_db_app_public/tables/tasks/columns/description/column


ALTER TABLE agent_db_app_public.tasks 
  DROP COLUMN description RESTRICT;


