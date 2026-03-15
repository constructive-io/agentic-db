-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/app_admin_grants/policies/enable_row_level_security
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/app_admin_grants/table


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-memberships-public".app_admin_grants 
  ENABLE ROW LEVEL SECURITY;

