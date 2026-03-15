-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/expense_contacts/columns/entity_id/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".expense_contacts 
  DROP COLUMN entity_id RESTRICT;


