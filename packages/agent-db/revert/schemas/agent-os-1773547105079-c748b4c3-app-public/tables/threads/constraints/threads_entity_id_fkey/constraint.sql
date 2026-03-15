-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/threads/constraints/threads_entity_id_fkey/constraint


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".threads 
  DROP CONSTRAINT threads_entity_id_fkey;


