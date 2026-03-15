-- Deploy: schemas/agent_db_memberships_public/tables/app_membership_defaults/columns/id/alterations/alt0000003240
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/app_membership_defaults/table
-- requires: schemas/agent_db_memberships_public/tables/app_membership_defaults/columns/id/column



ALTER TABLE "agent_db_memberships_public".app_membership_defaults 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

