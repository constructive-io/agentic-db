-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/expense_contacts/columns/contact_id/alterations/alt0000003149


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".expense_contacts 
  ALTER COLUMN contact_id DROP NOT NULL;


