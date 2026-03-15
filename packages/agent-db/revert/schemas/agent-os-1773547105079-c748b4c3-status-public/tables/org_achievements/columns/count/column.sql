-- Revert: schemas/agent-os-1773547105079-c748b4c3-status-public/tables/org_achievements/columns/count/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-status-public".org_achievements 
  DROP COLUMN count RESTRICT;


