-- Deploy: schemas/agent_db_memberships_public/tables/app_membership_defaults/policies/enable_row_level_security
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/app_membership_defaults/table


ALTER TABLE "agent_db_memberships_public".app_membership_defaults 
  ENABLE ROW LEVEL SECURITY;

