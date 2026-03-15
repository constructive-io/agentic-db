-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/agents/columns/communication_style/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".agents 
  DROP COLUMN communication_style RESTRICT;


