-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/agents/columns/capabilities/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".agents 
  DROP COLUMN capabilities RESTRICT;


