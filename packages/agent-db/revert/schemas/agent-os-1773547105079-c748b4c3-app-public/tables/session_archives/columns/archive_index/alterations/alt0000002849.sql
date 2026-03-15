-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/session_archives/columns/archive_index/alterations/alt0000002849


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".session_archives 
  ALTER COLUMN archive_index DROP NOT NULL;


