-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/session_archives/columns/updated_at/alterations/alt0000002846


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".session_archives 
  ALTER COLUMN updated_at DROP NOT NULL;


