-- Deploy: schemas/agent-os-1773547105079-c748b4c3-memberships-private/tables/org_memberships_sprt/columns/permissions/alterations/alt0000001893
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-private/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-private/tables/org_memberships_sprt/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-private/tables/org_memberships_sprt/columns/permissions/column



ALTER TABLE "agent-os-1773547105079-c748b4c3-memberships-private".org_memberships_sprt 
    ALTER COLUMN permissions SET DEFAULT lpad('', 24, '0')::bit(24);

