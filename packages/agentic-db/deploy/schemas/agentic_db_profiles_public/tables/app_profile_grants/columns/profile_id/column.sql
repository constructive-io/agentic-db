-- Deploy: schemas/agentic_db_profiles_public/tables/app_profile_grants/columns/profile_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_profiles_public/schema
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_profiles_public/tables/app_profile_grants/table


ALTER TABLE agentic_db_profiles_public.app_profile_grants 
  ADD COLUMN profile_id uuid;

