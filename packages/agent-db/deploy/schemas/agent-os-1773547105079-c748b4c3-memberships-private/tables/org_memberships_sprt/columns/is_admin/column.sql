-- Deploy: schemas/agent-os-1773547105079-c748b4c3-memberships-private/tables/org_memberships_sprt/columns/is_admin/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-private/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-private/tables/org_memberships_sprt/table


ALTER TABLE "agent-os-1773547105079-c748b4c3-memberships-private".org_memberships_sprt 
  ADD COLUMN is_admin boolean;

