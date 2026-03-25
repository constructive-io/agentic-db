-- Revert: schemas/agentic_db_app_public/tables/expense_contacts/columns/expense_id/alterations/alt0000001989


ALTER TABLE "agentic_db_app_public".expense_contacts 
  ALTER COLUMN expense_id DROP NOT NULL;


