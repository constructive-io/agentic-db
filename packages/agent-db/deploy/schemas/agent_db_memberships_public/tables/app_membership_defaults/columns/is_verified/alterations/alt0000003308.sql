-- Deploy: schemas/agent_db_memberships_public/tables/app_membership_defaults/columns/is_verified/alterations/alt0000003308
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/app_membership_defaults/table
-- requires: schemas/agent_db_memberships_public/tables/app_membership_defaults/columns/is_verified/column



ALTER TABLE "agent_db_memberships_public".app_membership_defaults 
    ALTER COLUMN is_verified SET DEFAULT false;

