-- Deploy: schemas/agentic_db_profiles_public/tables/org_profile_permissions/grants/authenticated/delete/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_profiles_public/schema
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_profiles_public/tables/org_profile_permissions/table


GRANT DELETE ON agentic_db_profiles_public.org_profile_permissions TO authenticated;

