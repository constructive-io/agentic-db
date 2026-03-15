-- Revert: schemas/agent_db_app_public/tables/task_contacts/columns/contact_id/alterations/alt0000004782


ALTER TABLE "agent_db_app_public".task_contacts 
  ALTER COLUMN contact_id DROP NOT NULL;


