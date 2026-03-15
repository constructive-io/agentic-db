-- Revert: schemas/agent-os-1773546821914-39f1cb9b-status-public/tables/org_achievements/columns/actor_id/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-status-public".org_achievements 
  DROP COLUMN actor_id RESTRICT;


