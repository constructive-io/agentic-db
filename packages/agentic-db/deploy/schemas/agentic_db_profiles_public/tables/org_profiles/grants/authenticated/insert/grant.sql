-- Deploy: schemas/agentic_db_profiles_public/tables/org_profiles/grants/authenticated/insert/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_profiles_public/schema
-- requires: schemas/agentic_db_profiles_public/tables/org_profiles/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous


GRANT INSERT ON agentic_db_profiles_public.org_profiles TO authenticated;

