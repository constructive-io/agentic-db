-- Deploy: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/org_admin_grants/columns/created_at/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/org_admin_grants/table


ALTER TABLE "agent-os-1773547105079-c748b4c3-memberships-public".org_admin_grants 
  ADD COLUMN created_at timestamptz;

