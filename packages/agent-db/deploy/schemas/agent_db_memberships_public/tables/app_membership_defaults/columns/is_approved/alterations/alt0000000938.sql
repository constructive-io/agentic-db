-- Deploy: schemas/agent_db_memberships_public/tables/app_membership_defaults/columns/is_approved/alterations/alt0000000938
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/app_membership_defaults/table
-- requires: schemas/agent_db_memberships_public/tables/app_membership_defaults/columns/is_approved/column


ALTER TABLE "agent_db_memberships_public".app_membership_defaults 
  ALTER COLUMN is_approved SET NOT NULL;

