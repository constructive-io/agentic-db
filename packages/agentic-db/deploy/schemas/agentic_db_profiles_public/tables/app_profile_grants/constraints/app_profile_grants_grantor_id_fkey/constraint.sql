-- Deploy: schemas/agentic_db_profiles_public/tables/app_profile_grants/constraints/app_profile_grants_grantor_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_profiles_public/schema
-- requires: schemas/agentic_db_users_public/tables/users/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_profiles_public/tables/app_profile_grants/table


ALTER TABLE agentic_db_profiles_public.app_profile_grants 
  ADD CONSTRAINT app_profile_grants_grantor_id_fkey 
    FOREIGN KEY(grantor_id) 
    REFERENCES agentic_db_users_public.users (id) 
    ON DELETE SET NULL;

