-- Deploy: schemas/agent_db_memberships_public/tables/org_membership_defaults/columns/create_groups_cascade_members/alterations/alt0000001199
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_membership_defaults/table
-- requires: schemas/agent_db_memberships_public/tables/org_membership_defaults/columns/create_groups_cascade_members/column



ALTER TABLE "agent_db_memberships_public".org_membership_defaults 
    ALTER COLUMN create_groups_cascade_members SET DEFAULT FALSE;

