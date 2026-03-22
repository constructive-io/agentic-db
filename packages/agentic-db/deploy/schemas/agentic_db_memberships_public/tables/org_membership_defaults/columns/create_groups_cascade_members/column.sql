-- Deploy: schemas/agentic_db_memberships_public/tables/org_membership_defaults/columns/create_groups_cascade_members/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/org_membership_defaults/table


ALTER TABLE "agentic_db_memberships_public".org_membership_defaults 
  ADD COLUMN create_groups_cascade_members boolean;

