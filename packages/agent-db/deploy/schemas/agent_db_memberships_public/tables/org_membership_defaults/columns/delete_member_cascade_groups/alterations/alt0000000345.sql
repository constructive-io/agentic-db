-- Deploy: schemas/agent_db_memberships_public/tables/org_membership_defaults/columns/delete_member_cascade_groups/alterations/alt0000000345
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_membership_defaults/columns/delete_member_cascade_groups/column


COMMENT ON COLUMN agent_db_memberships_public.org_membership_defaults.delete_member_cascade_groups IS E'When an org member is deleted, whether to cascade-remove their group memberships';

