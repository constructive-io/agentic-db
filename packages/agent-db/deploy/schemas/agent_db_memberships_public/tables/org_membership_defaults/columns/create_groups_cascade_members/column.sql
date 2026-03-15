-- Deploy: schemas/agent_db_memberships_public/tables/org_membership_defaults/columns/create_groups_cascade_members/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_membership_defaults/table


ALTER TABLE "agent_db_memberships_public".org_membership_defaults 
  ADD COLUMN create_groups_cascade_members boolean;

