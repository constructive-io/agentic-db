-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/chunks/columns/updated_at/alterations/alt0000002920


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".chunks 
  ALTER COLUMN updated_at DROP NOT NULL;


