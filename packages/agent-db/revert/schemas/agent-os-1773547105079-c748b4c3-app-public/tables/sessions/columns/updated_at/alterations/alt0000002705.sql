-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/sessions/columns/updated_at/alterations/alt0000002705


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".sessions 
  ALTER COLUMN updated_at DROP NOT NULL;


