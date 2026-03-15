-- Revert: schemas/agent-os-1773547105079-c748b4c3-status-public/tables/org_levels/columns/created_at/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-status-public".org_levels 
  DROP COLUMN created_at RESTRICT;


