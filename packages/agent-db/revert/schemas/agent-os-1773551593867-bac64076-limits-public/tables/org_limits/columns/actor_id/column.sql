-- Revert: schemas/agent-os-1773551593867-bac64076-limits-public/tables/org_limits/columns/actor_id/column


ALTER TABLE "agent-os-1773551593867-bac64076-limits-public".org_limits 
  DROP COLUMN actor_id RESTRICT;


