-- Revert: schemas/agent_db_app_public/tables/expense_contacts/constraints/expense_contacts_contact_id_fkey/constraint


ALTER TABLE "agent_db_app_public".expense_contacts 
  DROP CONSTRAINT expense_contacts_contact_id_fkey;


