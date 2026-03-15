-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_grants/alterations/alt0000000416
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_grants/table


ALTER TABLE "agent-os-1773546821914-39f1cb9b-memberships-public".org_grants 
  DISABLE ROW LEVEL SECURITY;

