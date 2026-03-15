-- Revert: schemas/agent_db_app_public/tables/expense_contacts/columns/contact_id/alterations/alt0000004806


ALTER TABLE "agent_db_app_public".expense_contacts 
  ALTER COLUMN contact_id DROP NOT NULL;


