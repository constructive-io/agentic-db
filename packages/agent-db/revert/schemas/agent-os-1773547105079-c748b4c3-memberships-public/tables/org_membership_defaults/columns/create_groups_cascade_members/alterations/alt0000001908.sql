-- Revert: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/org_membership_defaults/columns/create_groups_cascade_members/alterations/alt0000001908




ALTER TABLE "agent-os-1773547105079-c748b4c3-memberships-public".org_membership_defaults 
    ALTER COLUMN create_groups_cascade_members DROP DEFAULT;



