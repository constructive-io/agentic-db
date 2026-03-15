-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/tasks/constraints/tasks_entity_id_fkey/constraint


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".tasks 
  DROP CONSTRAINT tasks_entity_id_fkey;


