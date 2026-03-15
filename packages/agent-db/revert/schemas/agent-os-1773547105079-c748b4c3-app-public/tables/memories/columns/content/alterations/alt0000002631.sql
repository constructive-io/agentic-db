-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/memories/columns/content/alterations/alt0000002631


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".memories 
  ALTER COLUMN content DROP NOT NULL;


