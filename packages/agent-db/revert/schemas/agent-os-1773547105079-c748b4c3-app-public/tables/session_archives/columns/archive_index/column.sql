-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/session_archives/columns/archive_index/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".session_archives 
  DROP COLUMN archive_index RESTRICT;


