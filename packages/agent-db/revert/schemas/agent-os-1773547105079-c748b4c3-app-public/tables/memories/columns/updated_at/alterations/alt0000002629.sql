-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/memories/columns/updated_at/alterations/alt0000002629


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".memories 
  ALTER COLUMN updated_at DROP NOT NULL;


