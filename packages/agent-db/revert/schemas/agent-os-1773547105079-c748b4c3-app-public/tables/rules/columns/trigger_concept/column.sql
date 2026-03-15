-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/rules/columns/trigger_concept/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".rules 
  DROP COLUMN trigger_concept RESTRICT;


