-- Deploy: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_membership_defaults/columns/create_groups_cascade_members/alterations/alt0000001956
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_membership_defaults/table
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_membership_defaults/columns/create_groups_cascade_members/column



ALTER TABLE "agent-os-1773551593867-bac64076-memberships-public".org_membership_defaults 
    ALTER COLUMN create_groups_cascade_members SET DEFAULT FALSE;

