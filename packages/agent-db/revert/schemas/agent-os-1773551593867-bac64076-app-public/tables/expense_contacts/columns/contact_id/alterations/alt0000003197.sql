-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/expense_contacts/columns/contact_id/alterations/alt0000003197


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".expense_contacts 
  ALTER COLUMN contact_id DROP NOT NULL;


