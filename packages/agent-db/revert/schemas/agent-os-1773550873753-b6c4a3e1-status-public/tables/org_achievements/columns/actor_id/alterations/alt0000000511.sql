-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-status-public/tables/org_achievements/columns/actor_id/alterations/alt0000000511


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-status-public".org_achievements 
  ALTER COLUMN actor_id DROP NOT NULL;


