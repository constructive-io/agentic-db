-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/org_membership_defaults/columns/create_groups_cascade_members/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-memberships-public".org_membership_defaults 
  DROP COLUMN create_groups_cascade_members RESTRICT;


