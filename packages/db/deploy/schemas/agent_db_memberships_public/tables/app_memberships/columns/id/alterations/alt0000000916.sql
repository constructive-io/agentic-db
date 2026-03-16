-- Deploy: schemas/agent_db_memberships_public/tables/app_memberships/columns/id/alterations/alt0000000916
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/app_memberships/table
-- requires: schemas/agent_db_memberships_public/tables/app_memberships/columns/id/column



ALTER TABLE "agent_db_memberships_public".app_memberships 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

