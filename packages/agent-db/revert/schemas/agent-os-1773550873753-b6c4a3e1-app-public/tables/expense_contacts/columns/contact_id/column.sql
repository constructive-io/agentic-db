-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/expense_contacts/columns/contact_id/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".expense_contacts 
  DROP COLUMN contact_id RESTRICT;


