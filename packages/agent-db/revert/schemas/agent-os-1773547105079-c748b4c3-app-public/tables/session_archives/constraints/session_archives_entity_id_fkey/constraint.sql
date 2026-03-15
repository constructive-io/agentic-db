-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/session_archives/constraints/session_archives_entity_id_fkey/constraint


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".session_archives 
  DROP CONSTRAINT session_archives_entity_id_fkey;


