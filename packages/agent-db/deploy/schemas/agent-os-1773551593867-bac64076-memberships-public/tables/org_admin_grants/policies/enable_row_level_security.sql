-- Deploy: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_admin_grants/policies/enable_row_level_security
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_admin_grants/table


ALTER TABLE "agent-os-1773551593867-bac64076-memberships-public".org_admin_grants 
  ENABLE ROW LEVEL SECURITY;

