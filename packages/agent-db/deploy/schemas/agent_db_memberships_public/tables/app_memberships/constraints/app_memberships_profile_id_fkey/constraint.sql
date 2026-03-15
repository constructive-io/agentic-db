-- Deploy: schemas/agent_db_memberships_public/tables/app_memberships/constraints/app_memberships_profile_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_profiles_public/tables/app_profiles/table
-- requires: schemas/agent_db_memberships_public/tables/app_memberships/table


ALTER TABLE agent_db_memberships_public.app_memberships 
  ADD CONSTRAINT app_memberships_profile_id_fkey 
    FOREIGN KEY(profile_id) 
    REFERENCES agent_db_profiles_public.app_profiles (id) 
    ON DELETE CASCADE;

