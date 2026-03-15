-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/org_membership_defaults/columns/create_groups_cascade_members/alterations/alt0000000347
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/org_membership_defaults/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/org_membership_defaults/columns/create_groups_cascade_members/column



ALTER TABLE "agent-os-1773550873753-b6c4a3e1-memberships-public".org_membership_defaults 
    ALTER COLUMN create_groups_cascade_members SET DEFAULT FALSE;

