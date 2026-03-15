-- Deploy: schemas/agent-os-1773547105079-c748b4c3-permissions-public/tables/org_permissions/columns/id/alterations/alt0000001836
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-permissions-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-permissions-public/tables/org_permissions/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-permissions-public/tables/org_permissions/columns/id/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-permissions-public".org_permissions 
  ALTER COLUMN id SET NOT NULL;

