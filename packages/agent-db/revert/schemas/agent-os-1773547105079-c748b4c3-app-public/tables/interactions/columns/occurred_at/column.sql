-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/interactions/columns/occurred_at/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".interactions 
  DROP COLUMN occurred_at RESTRICT;


