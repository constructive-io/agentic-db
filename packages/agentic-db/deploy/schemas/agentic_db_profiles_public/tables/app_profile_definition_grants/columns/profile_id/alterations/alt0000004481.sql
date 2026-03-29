-- Deploy: schemas/agentic_db_profiles_public/tables/app_profile_definition_grants/columns/profile_id/alterations/alt0000004481
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_profiles_public/schema
-- requires: schemas/agentic_db_profiles_public/tables/app_profile_definition_grants/table
-- requires: schemas/agentic_db_profiles_public/tables/app_profile_definition_grants/columns/profile_id/column


ALTER TABLE agentic_db_profiles_public.app_profile_definition_grants 
  ALTER COLUMN profile_id SET NOT NULL;

