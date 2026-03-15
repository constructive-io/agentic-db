-- Deploy: schemas/agent_db_memberships_public/tables/org_membership_defaults/columns/delete_member_cascade_groups/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_membership_defaults/table


ALTER TABLE agent_db_memberships_public.org_membership_defaults 
  ADD COLUMN delete_member_cascade_groups boolean;

