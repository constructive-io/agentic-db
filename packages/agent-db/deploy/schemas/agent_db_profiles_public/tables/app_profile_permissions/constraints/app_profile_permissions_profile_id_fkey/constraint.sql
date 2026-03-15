-- Deploy: schemas/agent_db_profiles_public/tables/app_profile_permissions/constraints/app_profile_permissions_profile_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_profiles_public/schema
-- requires: schemas/agent_db_profiles_public/tables/app_profiles/table
-- requires: schemas/agent_db_profiles_public/tables/app_profile_permissions/table


ALTER TABLE agent_db_profiles_public.app_profile_permissions 
  ADD CONSTRAINT app_profile_permissions_profile_id_fkey 
    FOREIGN KEY(profile_id) 
    REFERENCES agent_db_profiles_public.app_profiles (id) 
    ON DELETE CASCADE;

