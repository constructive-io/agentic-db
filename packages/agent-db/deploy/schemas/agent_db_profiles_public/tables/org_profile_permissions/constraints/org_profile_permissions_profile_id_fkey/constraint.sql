-- Deploy: schemas/agent_db_profiles_public/tables/org_profile_permissions/constraints/org_profile_permissions_profile_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_profiles_public/schema
-- requires: schemas/agent_db_profiles_public/tables/org_profiles/table
-- requires: schemas/agent_db_profiles_public/tables/org_profile_permissions/table


ALTER TABLE agent_db_profiles_public.org_profile_permissions 
  ADD CONSTRAINT org_profile_permissions_profile_id_fkey 
    FOREIGN KEY(profile_id) 
    REFERENCES agent_db_profiles_public.org_profiles (id) 
    ON DELETE CASCADE;

