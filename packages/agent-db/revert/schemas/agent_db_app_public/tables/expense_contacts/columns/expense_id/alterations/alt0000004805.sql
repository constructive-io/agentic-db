-- Revert: schemas/agent_db_app_public/tables/expense_contacts/columns/expense_id/alterations/alt0000004805


ALTER TABLE "agent_db_app_public".expense_contacts 
  ALTER COLUMN expense_id DROP NOT NULL;


