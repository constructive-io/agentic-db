-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/task_contacts/columns/task_id/alterations/alt0000003124


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".task_contacts 
  ALTER COLUMN task_id DROP NOT NULL;


