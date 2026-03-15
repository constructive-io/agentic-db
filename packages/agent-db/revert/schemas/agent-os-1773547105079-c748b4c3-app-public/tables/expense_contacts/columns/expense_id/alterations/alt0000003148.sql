-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/expense_contacts/columns/expense_id/alterations/alt0000003148


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".expense_contacts 
  ALTER COLUMN expense_id DROP NOT NULL;


