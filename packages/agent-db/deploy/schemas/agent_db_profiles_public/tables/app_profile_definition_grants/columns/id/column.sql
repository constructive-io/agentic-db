-- Deploy: schemas/agent_db_profiles_public/tables/app_profile_definition_grants/columns/id/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_profiles_public/schema
-- requires: schemas/agent_db_profiles_public/tables/app_profile_definition_grants/table


ALTER TABLE agent_db_profiles_public.app_profile_definition_grants 
  ADD COLUMN id uuid;

