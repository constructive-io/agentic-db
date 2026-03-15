-- Deploy: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/org_membership_defaults/columns/is_approved/alterations/alt0000001900
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/org_membership_defaults/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/org_membership_defaults/columns/is_approved/column



ALTER TABLE "agent-os-1773547105079-c748b4c3-memberships-public".org_membership_defaults 
    ALTER COLUMN is_approved SET DEFAULT TRUE;

