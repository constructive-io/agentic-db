-- Deploy: schemas/agentic_db_profiles_public/tables/app_profile_grants/columns/membership_id/alterations/alt0000001419
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_profiles_public/schema
-- requires: schemas/agentic_db_profiles_public/tables/app_profile_grants/table
-- requires: schemas/agentic_db_profiles_public/tables/app_profile_grants/columns/membership_id/column


ALTER TABLE agentic_db_profiles_public.app_profile_grants 
  ALTER COLUMN membership_id SET NOT NULL;

