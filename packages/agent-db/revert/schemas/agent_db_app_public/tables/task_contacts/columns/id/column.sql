-- Revert: schemas/agent_db_app_public/tables/task_contacts/columns/id/column


ALTER TABLE agent_db_app_public.task_contacts 
  DROP COLUMN id RESTRICT;


