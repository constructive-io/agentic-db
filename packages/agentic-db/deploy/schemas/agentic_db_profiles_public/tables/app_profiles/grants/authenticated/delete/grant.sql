-- Deploy: schemas/agentic_db_profiles_public/tables/app_profiles/grants/authenticated/delete/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_profiles_public/schema
-- requires: schemas/agentic_db_profiles_public/tables/app_profiles/table


GRANT DELETE ON agentic_db_profiles_public.app_profiles TO authenticated;

