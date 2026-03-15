-- Deploy: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_grants/columns/id/alterations/alt0000002028
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_grants/table
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_grants/columns/id/column



ALTER TABLE "agent-os-1773551593867-bac64076-memberships-public".org_grants 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

