-- Deploy: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/app_admin_grants/policies/enable_row_level_security
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/app_admin_grants/table


ALTER TABLE "agent-os-1773547105079-c748b4c3-memberships-public".app_admin_grants 
  ENABLE ROW LEVEL SECURITY;

