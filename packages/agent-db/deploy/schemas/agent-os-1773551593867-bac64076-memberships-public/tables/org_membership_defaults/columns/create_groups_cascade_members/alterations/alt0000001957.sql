-- Deploy: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_membership_defaults/columns/create_groups_cascade_members/alterations/alt0000001957
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_membership_defaults/columns/create_groups_cascade_members/column


COMMENT ON COLUMN "agent-os-1773551593867-bac64076-memberships-public".org_membership_defaults.create_groups_cascade_members IS E'When a group is created, whether to auto-add existing org members as group members';

