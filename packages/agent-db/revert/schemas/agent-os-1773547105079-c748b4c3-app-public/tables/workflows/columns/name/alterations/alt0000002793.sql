-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/workflows/columns/name/alterations/alt0000002793


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".workflows 
  ALTER COLUMN name DROP NOT NULL;


