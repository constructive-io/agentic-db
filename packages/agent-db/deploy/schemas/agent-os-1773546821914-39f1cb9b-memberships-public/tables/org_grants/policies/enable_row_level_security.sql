-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_grants/policies/enable_row_level_security
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_grants/table


ALTER TABLE "agent-os-1773546821914-39f1cb9b-memberships-public".org_grants 
  ENABLE ROW LEVEL SECURITY;

