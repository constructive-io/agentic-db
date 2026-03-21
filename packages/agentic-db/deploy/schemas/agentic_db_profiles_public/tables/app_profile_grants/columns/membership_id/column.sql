-- Deploy: schemas/agentic_db_profiles_public/tables/app_profile_grants/columns/membership_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_profiles_public/schema
-- requires: schemas/agentic_db_profiles_public/tables/app_profile_grants/table


ALTER TABLE agentic_db_profiles_public.app_profile_grants 
  ADD COLUMN membership_id uuid;

