-- Deploy: schemas/agent_db_profiles_public/tables/org_profiles/columns/is_system/alterations/alt0000000447
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_profiles_public/schema
-- requires: schemas/agent_db_profiles_public/tables/org_profiles/table
-- requires: schemas/agent_db_profiles_public/tables/org_profiles/columns/is_system/column



ALTER TABLE agent_db_profiles_public.org_profiles 
    ALTER COLUMN is_system SET DEFAULT false;

