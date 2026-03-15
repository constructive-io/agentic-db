-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/session_archives/columns/summary/alterations/alt0000002850


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".session_archives 
  ALTER COLUMN summary DROP NOT NULL;


