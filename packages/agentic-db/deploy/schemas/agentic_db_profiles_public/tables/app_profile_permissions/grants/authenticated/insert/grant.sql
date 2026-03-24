-- Deploy: schemas/agentic_db_profiles_public/tables/app_profile_permissions/grants/authenticated/insert/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_profiles_public/schema
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_profiles_public/tables/app_profile_permissions/table


GRANT INSERT ON agentic_db_profiles_public.app_profile_permissions TO authenticated;

