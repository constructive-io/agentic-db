-- Deploy: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_owner_grants/columns/actor_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_owner_grants/table


ALTER TABLE "agent-os-1773551593867-bac64076-memberships-public".org_owner_grants 
  ADD COLUMN actor_id uuid;

