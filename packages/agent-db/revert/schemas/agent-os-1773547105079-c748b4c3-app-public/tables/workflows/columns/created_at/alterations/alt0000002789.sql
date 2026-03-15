-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/workflows/columns/created_at/alterations/alt0000002789


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".workflows 
  ALTER COLUMN created_at DROP NOT NULL;


