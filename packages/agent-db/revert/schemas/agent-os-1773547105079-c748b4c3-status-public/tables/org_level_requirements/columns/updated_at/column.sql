-- Revert: schemas/agent-os-1773547105079-c748b4c3-status-public/tables/org_level_requirements/columns/updated_at/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-status-public".org_level_requirements 
  DROP COLUMN updated_at RESTRICT;


