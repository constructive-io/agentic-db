-- Deploy: schemas/agent_db_profiles_public/tables/app_profile_grants/columns/is_grant/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_profiles_public/schema
-- requires: schemas/agent_db_profiles_public/tables/app_profile_grants/table


ALTER TABLE agent_db_profiles_public.app_profile_grants 
  ADD COLUMN is_grant boolean;

