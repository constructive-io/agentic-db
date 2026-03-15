-- Deploy: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_owner_grants/alterations/alt0000002011
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_owner_grants/table


ALTER TABLE "agent-os-1773551593867-bac64076-memberships-public".org_owner_grants 
  DISABLE ROW LEVEL SECURITY;

