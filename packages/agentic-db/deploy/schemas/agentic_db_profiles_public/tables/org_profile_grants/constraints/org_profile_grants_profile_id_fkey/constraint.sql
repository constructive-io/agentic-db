-- Deploy: schemas/agentic_db_profiles_public/tables/org_profile_grants/constraints/org_profile_grants_profile_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_profiles_public/schema
-- requires: schemas/agentic_db_profiles_public/tables/org_profiles/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_profiles_public/tables/org_profile_grants/table


ALTER TABLE agentic_db_profiles_public.org_profile_grants 
  ADD CONSTRAINT org_profile_grants_profile_id_fkey 
    FOREIGN KEY(profile_id) 
    REFERENCES agentic_db_profiles_public.org_profiles (id) 
    ON DELETE SET NULL;

