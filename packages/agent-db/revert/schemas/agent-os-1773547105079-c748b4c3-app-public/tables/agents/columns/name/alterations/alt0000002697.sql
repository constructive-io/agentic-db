-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/agents/columns/name/alterations/alt0000002697


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".agents 
  ALTER COLUMN name DROP NOT NULL;


