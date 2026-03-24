-- Deploy: schemas/agentic_db_profiles_public/tables/app_profile_definition_grants/constraints/app_profile_definition_grants_profile_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_profiles_public/schema
-- requires: schemas/agentic_db_profiles_public/tables/app_profiles/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_profiles_public/tables/app_profile_definition_grants/table


ALTER TABLE agentic_db_profiles_public.app_profile_definition_grants 
  ADD CONSTRAINT app_profile_definition_grants_profile_id_fkey 
    FOREIGN KEY(profile_id) 
    REFERENCES agentic_db_profiles_public.app_profiles (id) 
    ON DELETE CASCADE;

