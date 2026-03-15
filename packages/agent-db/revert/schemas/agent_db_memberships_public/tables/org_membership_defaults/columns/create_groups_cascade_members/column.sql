-- Revert: schemas/agent_db_memberships_public/tables/org_membership_defaults/columns/create_groups_cascade_members/column


ALTER TABLE agent_db_memberships_public.org_membership_defaults 
  DROP COLUMN create_groups_cascade_members RESTRICT;


