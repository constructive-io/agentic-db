-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/memories/columns/created_at/alterations/alt0000002627


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".memories 
  ALTER COLUMN created_at DROP NOT NULL;


