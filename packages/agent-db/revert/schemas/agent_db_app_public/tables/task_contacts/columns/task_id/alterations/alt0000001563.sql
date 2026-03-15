-- Revert: schemas/agent_db_app_public/tables/task_contacts/columns/task_id/alterations/alt0000001563


ALTER TABLE agent_db_app_public.task_contacts 
  ALTER COLUMN task_id DROP NOT NULL;


