-- Deploy: schemas/agent_db_memberships_public/tables/org_membership_defaults/columns/delete_member_cascade_groups/alterations/alt0000001195
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_membership_defaults/table
-- requires: schemas/agent_db_memberships_public/tables/org_membership_defaults/columns/delete_member_cascade_groups/column


ALTER TABLE "agent_db_memberships_public".org_membership_defaults 
  ALTER COLUMN delete_member_cascade_groups SET NOT NULL;

