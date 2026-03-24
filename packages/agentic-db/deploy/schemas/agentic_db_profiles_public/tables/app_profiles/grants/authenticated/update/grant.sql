-- Deploy: schemas/agentic_db_profiles_public/tables/app_profiles/grants/authenticated/update/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_profiles_public/schema
-- requires: schemas/agentic_db_profiles_public/tables/app_profiles/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous


GRANT UPDATE ON agentic_db_profiles_public.app_profiles TO authenticated;

