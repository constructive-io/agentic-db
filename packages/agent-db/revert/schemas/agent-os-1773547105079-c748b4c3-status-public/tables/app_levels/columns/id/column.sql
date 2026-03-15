-- Revert: schemas/agent-os-1773547105079-c748b4c3-status-public/tables/app_levels/columns/id/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-status-public".app_levels 
  DROP COLUMN id RESTRICT;


