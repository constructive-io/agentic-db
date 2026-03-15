-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_memberships/policies/enable_row_level_security
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_memberships/table


ALTER TABLE "agent-os-1773546821914-39f1cb9b-memberships-public".org_memberships 
  ENABLE ROW LEVEL SECURITY;

