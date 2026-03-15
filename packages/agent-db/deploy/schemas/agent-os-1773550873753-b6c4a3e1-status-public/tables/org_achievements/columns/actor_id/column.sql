-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-status-public/tables/org_achievements/columns/actor_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-status-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-status-public/tables/org_achievements/table


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-status-public".org_achievements 
  ADD COLUMN actor_id uuid;

