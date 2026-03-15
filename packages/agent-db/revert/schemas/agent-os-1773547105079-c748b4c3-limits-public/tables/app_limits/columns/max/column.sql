-- Revert: schemas/agent-os-1773547105079-c748b4c3-limits-public/tables/app_limits/columns/max/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-limits-public".app_limits 
  DROP COLUMN max RESTRICT;


