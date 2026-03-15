-- Revert: schemas/agent-os-1773546821914-39f1cb9b-status-public/tables/org_achievements/columns/actor_id/alterations/alt0000000511


ALTER TABLE "agent-os-1773546821914-39f1cb9b-status-public".org_achievements 
  ALTER COLUMN actor_id DROP NOT NULL;


