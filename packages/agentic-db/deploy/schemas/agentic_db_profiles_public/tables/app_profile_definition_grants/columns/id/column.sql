-- Deploy: schemas/agentic_db_profiles_public/tables/app_profile_definition_grants/columns/id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_profiles_public/schema
-- requires: schemas/agentic_db_profiles_public/tables/app_profile_definition_grants/table


ALTER TABLE agentic_db_profiles_public.app_profile_definition_grants 
  ADD COLUMN id uuid;

