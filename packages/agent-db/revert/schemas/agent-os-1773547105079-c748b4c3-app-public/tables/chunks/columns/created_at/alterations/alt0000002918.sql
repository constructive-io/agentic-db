-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/chunks/columns/created_at/alterations/alt0000002918


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".chunks 
  ALTER COLUMN created_at DROP NOT NULL;


