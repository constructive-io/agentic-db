-- Deploy: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_members/columns/actor_id/alterations/alt0000001993
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_members/table
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_members/columns/actor_id/column


ALTER TABLE "agent-os-1773551593867-bac64076-memberships-public".org_members 
  ALTER COLUMN actor_id SET NOT NULL;

