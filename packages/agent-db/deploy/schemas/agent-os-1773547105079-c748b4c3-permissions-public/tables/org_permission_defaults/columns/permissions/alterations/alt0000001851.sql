-- Deploy: schemas/agent-os-1773547105079-c748b4c3-permissions-public/tables/org_permission_defaults/columns/permissions/alterations/alt0000001851
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-permissions-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-permissions-public/tables/org_permission_defaults/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-permissions-public/tables/org_permission_defaults/columns/permissions/column



ALTER TABLE "agent-os-1773547105079-c748b4c3-permissions-public".org_permission_defaults 
    ALTER COLUMN permissions SET DEFAULT lpad('', 24, '0')::bit(24);

