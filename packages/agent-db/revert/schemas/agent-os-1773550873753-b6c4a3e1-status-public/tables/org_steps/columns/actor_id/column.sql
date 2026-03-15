-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-status-public/tables/org_steps/columns/actor_id/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-status-public".org_steps 
  DROP COLUMN actor_id RESTRICT;


