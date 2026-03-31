-- Revert: schemas/agentic_db_app_public/tables/expense_contacts/constraints/expense_contacts_pkey/constraint


ALTER TABLE "agentic_db_app_public".expense_contacts 
  DROP CONSTRAINT expense_contacts_pkey;


