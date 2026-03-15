-- Deploy: schemas/agent-os-1773547105079-c748b4c3-permissions-public/tables/org_permissions/columns/bitstr/alterations/alt0000001841
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-permissions-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-permissions-public/tables/org_permissions/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-permissions-public/tables/org_permissions/columns/bitstr/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-permissions-public".org_permissions 
  ALTER COLUMN bitstr SET NOT NULL;

