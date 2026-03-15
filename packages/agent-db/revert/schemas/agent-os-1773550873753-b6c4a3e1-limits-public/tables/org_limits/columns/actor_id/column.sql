-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-limits-public/tables/org_limits/columns/actor_id/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-limits-public".org_limits 
  DROP COLUMN actor_id RESTRICT;


