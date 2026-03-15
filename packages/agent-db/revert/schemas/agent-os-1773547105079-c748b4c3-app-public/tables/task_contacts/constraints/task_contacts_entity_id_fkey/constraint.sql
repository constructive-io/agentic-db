-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/task_contacts/constraints/task_contacts_entity_id_fkey/constraint


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".task_contacts 
  DROP CONSTRAINT task_contacts_entity_id_fkey;


