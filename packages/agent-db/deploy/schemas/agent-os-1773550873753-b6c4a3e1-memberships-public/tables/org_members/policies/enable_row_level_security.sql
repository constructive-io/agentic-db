-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/org_members/policies/enable_row_level_security
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/org_members/table


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-memberships-public".org_members 
  ENABLE ROW LEVEL SECURITY;

