-- Revert: schemas/agent-os-1773547105079-c748b4c3-limits-public/tables/org_limits/columns/entity_id/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-limits-public".org_limits 
  DROP COLUMN entity_id RESTRICT;


