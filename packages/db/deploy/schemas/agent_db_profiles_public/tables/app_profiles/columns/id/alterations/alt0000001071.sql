-- Deploy: schemas/agent_db_profiles_public/tables/app_profiles/columns/id/alterations/alt0000001071
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_profiles_public/schema
-- requires: schemas/agent_db_profiles_public/tables/app_profiles/table
-- requires: schemas/agent_db_profiles_public/tables/app_profiles/columns/id/column



ALTER TABLE "agent_db_profiles_public".app_profiles 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

