-- Deploy: schemas/agent_db_profiles_public/tables/app_profile_permissions/columns/updated_at/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_profiles_public/schema
-- requires: schemas/agent_db_profiles_public/tables/app_profile_permissions/table


ALTER TABLE agent_db_profiles_public.app_profile_permissions 
  ADD COLUMN updated_at timestamptz;

