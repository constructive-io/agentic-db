-- Revert: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_membership_defaults/columns/create_groups_cascade_members/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-memberships-public".org_membership_defaults 
  DROP COLUMN create_groups_cascade_members RESTRICT;


