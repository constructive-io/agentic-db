-- Deploy: schemas/agent_db_memberships_public/tables/app_memberships/columns/id/alterations/alt0000003234
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/app_memberships/table
-- requires: schemas/agent_db_memberships_public/tables/app_memberships/columns/id/column



ALTER TABLE "agent_db_memberships_public".app_memberships 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

