-- Deploy: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/app_memberships/columns/permissions/alterations/alt0000001676
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/app_memberships/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/app_memberships/columns/permissions/column



ALTER TABLE "agent-os-1773547105079-c748b4c3-memberships-public".app_memberships 
    ALTER COLUMN permissions SET DEFAULT lpad('', 24, '0')::bit(24);

