-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/org_members/columns/actor_id/alterations/alt0000000384
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/org_members/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/org_members/columns/actor_id/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-memberships-public".org_members 
  ALTER COLUMN actor_id SET NOT NULL;

