-- Deploy: schemas/agentic_db_profiles_public/tables/app_profile_grants/columns/created_at/alterations/alt0000001581
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_profiles_public/schema
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_profiles_public/tables/app_profile_grants/table
-- requires: schemas/agentic_db_profiles_public/tables/app_profile_grants/columns/created_at/column


ALTER TABLE agentic_db_profiles_public.app_profile_grants 
  ALTER COLUMN created_at SET DEFAULT now();

