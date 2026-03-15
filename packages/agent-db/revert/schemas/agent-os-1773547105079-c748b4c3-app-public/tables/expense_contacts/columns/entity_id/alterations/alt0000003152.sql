-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/expense_contacts/columns/entity_id/alterations/alt0000003152


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".expense_contacts 
  ALTER COLUMN entity_id DROP NOT NULL;


