-- Deploy: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_members/columns/id/alterations/alt0000001988
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_members/table
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_members/columns/id/column


ALTER TABLE "agent-os-1773551593867-bac64076-memberships-public".org_members 
  ALTER COLUMN id SET NOT NULL;

