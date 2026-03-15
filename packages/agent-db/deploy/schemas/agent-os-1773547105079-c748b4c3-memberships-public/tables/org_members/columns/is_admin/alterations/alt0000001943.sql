-- Deploy: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/org_members/columns/is_admin/alterations/alt0000001943
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/org_members/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/org_members/columns/is_admin/column



ALTER TABLE "agent-os-1773547105079-c748b4c3-memberships-public".org_members 
    ALTER COLUMN is_admin SET DEFAULT false;

