-- Deploy: schemas/agentic_db_memberships_public/tables/org_membership_defaults/columns/create_groups_cascade_members/alterations/alt0000002467
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/org_membership_defaults/columns/create_groups_cascade_members/column


COMMENT ON COLUMN agentic_db_memberships_public.org_membership_defaults.create_groups_cascade_members IS E'When a group is created, whether to auto-add existing org members as group members';

