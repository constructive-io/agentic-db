-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/workflows/columns/updated_at/alterations/alt0000002791


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".workflows 
  ALTER COLUMN updated_at DROP NOT NULL;


