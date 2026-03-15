-- Deploy: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_owner_grants/columns/actor_id/alterations/alt0000002018
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_owner_grants/table
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_owner_grants/columns/actor_id/column


ALTER TABLE "agent-os-1773551593867-bac64076-memberships-public".org_owner_grants 
  ALTER COLUMN actor_id SET NOT NULL;

