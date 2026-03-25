-- Revert: schemas/agentic_db_app_public/tables/expense_contacts/columns/contact_id/column


ALTER TABLE "agentic_db_app_public".expense_contacts 
  DROP COLUMN contact_id RESTRICT;


