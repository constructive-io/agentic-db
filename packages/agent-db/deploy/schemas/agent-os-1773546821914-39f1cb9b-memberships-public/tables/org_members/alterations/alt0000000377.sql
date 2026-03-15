-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_members/alterations/alt0000000377
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_members/table


ALTER TABLE "agent-os-1773546821914-39f1cb9b-memberships-public".org_members 
  DISABLE ROW LEVEL SECURITY;

