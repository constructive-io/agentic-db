-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/tasks/columns/entity_id/alterations/alt0000002605


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".tasks 
  ALTER COLUMN entity_id DROP NOT NULL;


