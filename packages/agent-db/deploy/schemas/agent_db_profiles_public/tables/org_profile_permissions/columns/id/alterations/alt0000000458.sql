-- Deploy: schemas/agent_db_profiles_public/tables/org_profile_permissions/columns/id/alterations/alt0000000458
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_profiles_public/schema
-- requires: schemas/agent_db_profiles_public/tables/org_profile_permissions/table
-- requires: schemas/agent_db_profiles_public/tables/org_profile_permissions/columns/id/column



ALTER TABLE agent_db_profiles_public.org_profile_permissions 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

