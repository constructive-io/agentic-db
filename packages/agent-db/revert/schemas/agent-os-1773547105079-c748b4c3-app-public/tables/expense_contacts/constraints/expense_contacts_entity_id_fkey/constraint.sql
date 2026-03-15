-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/expense_contacts/constraints/expense_contacts_entity_id_fkey/constraint


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".expense_contacts 
  DROP CONSTRAINT expense_contacts_entity_id_fkey;


