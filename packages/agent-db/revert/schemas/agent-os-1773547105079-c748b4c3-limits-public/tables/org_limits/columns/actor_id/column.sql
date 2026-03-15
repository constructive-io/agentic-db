-- Revert: schemas/agent-os-1773547105079-c748b4c3-limits-public/tables/org_limits/columns/actor_id/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-limits-public".org_limits 
  DROP COLUMN actor_id RESTRICT;


