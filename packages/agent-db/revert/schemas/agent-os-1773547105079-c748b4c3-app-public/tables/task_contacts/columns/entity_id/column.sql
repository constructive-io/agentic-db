-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/task_contacts/columns/entity_id/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".task_contacts 
  DROP COLUMN entity_id RESTRICT;


