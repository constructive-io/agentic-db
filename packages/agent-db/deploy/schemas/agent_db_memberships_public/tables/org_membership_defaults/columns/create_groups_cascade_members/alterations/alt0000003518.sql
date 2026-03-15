-- Deploy: schemas/agent_db_memberships_public/tables/org_membership_defaults/columns/create_groups_cascade_members/alterations/alt0000003518
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_membership_defaults/columns/create_groups_cascade_members/column


COMMENT ON COLUMN "agent_db_memberships_public".org_membership_defaults.create_groups_cascade_members IS E'When a group is created, whether to auto-add existing org members as group members';

