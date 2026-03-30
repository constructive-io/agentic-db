-- Revert: schemas/agentic_db_app_public/tables/expense_contacts/columns/id/alterations/alt0000002041


ALTER TABLE "agentic_db_app_public".expense_contacts 
  ALTER COLUMN id DROP NOT NULL;


