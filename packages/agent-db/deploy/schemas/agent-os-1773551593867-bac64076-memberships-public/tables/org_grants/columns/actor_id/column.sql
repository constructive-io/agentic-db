-- Deploy: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_grants/columns/actor_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_grants/table


ALTER TABLE "agent-os-1773551593867-bac64076-memberships-public".org_grants 
  ADD COLUMN actor_id uuid;

