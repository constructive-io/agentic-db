-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/org_admin_grants/alterations/alt0000000388
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/org_admin_grants/table


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-memberships-public".org_admin_grants 
  DISABLE ROW LEVEL SECURITY;

