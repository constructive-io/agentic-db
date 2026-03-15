-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/workflows/columns/id/alterations/alt0000002786


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".workflows 
  ALTER COLUMN id DROP NOT NULL;


