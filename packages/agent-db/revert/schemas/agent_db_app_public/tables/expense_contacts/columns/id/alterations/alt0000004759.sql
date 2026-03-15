-- Revert: schemas/agent_db_app_public/tables/expense_contacts/columns/id/alterations/alt0000004759


ALTER TABLE "agent_db_app_public".expense_contacts 
  ALTER COLUMN id DROP NOT NULL;


