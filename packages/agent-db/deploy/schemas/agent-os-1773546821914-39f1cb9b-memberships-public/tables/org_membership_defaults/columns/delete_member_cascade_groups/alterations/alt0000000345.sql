-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_membership_defaults/columns/delete_member_cascade_groups/alterations/alt0000000345
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_membership_defaults/columns/delete_member_cascade_groups/column


COMMENT ON COLUMN "agent-os-1773546821914-39f1cb9b-memberships-public".org_membership_defaults.delete_member_cascade_groups IS E'When an org member is deleted, whether to cascade-remove their group memberships';

