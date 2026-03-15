-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/expense_contacts/columns/expense_id/alterations/alt0000003196


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".expense_contacts 
  ALTER COLUMN expense_id DROP NOT NULL;


