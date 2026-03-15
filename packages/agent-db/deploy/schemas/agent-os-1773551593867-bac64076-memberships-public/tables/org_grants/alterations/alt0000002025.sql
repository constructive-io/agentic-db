-- Deploy: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_grants/alterations/alt0000002025
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_grants/table


ALTER TABLE "agent-os-1773551593867-bac64076-memberships-public".org_grants 
  DISABLE ROW LEVEL SECURITY;

