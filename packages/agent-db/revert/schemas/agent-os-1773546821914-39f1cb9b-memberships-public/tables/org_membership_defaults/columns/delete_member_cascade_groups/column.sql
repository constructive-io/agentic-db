-- Revert: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_membership_defaults/columns/delete_member_cascade_groups/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-memberships-public".org_membership_defaults 
  DROP COLUMN delete_member_cascade_groups RESTRICT;


