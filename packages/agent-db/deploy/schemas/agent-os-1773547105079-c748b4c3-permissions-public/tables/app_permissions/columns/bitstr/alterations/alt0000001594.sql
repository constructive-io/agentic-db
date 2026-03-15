-- Deploy: schemas/agent-os-1773547105079-c748b4c3-permissions-public/tables/app_permissions/columns/bitstr/alterations/alt0000001594
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-permissions-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-permissions-public/tables/app_permissions/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-permissions-public/tables/app_permissions/columns/bitstr/column



ALTER TABLE "agent-os-1773547105079-c748b4c3-permissions-public".app_permissions 
    ALTER COLUMN bitstr SET DEFAULT lpad('', 24, '0')::bit(24);

