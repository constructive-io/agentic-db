-- Deploy: schemas/agent_db_profiles_public/tables/app_profile_permissions/columns/profile_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_profiles_public/schema
-- requires: schemas/agent_db_profiles_public/tables/app_profile_permissions/table


ALTER TABLE agent_db_profiles_public.app_profile_permissions 
  ADD COLUMN profile_id uuid;

