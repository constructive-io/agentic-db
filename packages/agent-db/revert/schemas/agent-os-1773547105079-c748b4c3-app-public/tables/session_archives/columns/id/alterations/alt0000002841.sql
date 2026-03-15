-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/session_archives/columns/id/alterations/alt0000002841


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".session_archives 
  ALTER COLUMN id DROP NOT NULL;


