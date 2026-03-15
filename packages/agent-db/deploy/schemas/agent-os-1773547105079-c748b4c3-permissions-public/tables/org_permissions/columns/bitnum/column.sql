-- Deploy: schemas/agent-os-1773547105079-c748b4c3-permissions-public/tables/org_permissions/columns/bitnum/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-permissions-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-permissions-public/tables/org_permissions/table


ALTER TABLE "agent-os-1773547105079-c748b4c3-permissions-public".org_permissions 
  ADD COLUMN bitnum int;

