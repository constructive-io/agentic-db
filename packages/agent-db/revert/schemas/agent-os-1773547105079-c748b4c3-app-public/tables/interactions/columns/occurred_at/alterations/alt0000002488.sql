-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/interactions/columns/occurred_at/alterations/alt0000002488


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".interactions 
  ALTER COLUMN occurred_at DROP NOT NULL;


