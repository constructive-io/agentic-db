-- Revert: schemas/agent_db_app_public/tables/task_contacts/constraints/task_contacts_pkey/constraint


ALTER TABLE agent_db_app_public.task_contacts 
  DROP CONSTRAINT task_contacts_pkey;


