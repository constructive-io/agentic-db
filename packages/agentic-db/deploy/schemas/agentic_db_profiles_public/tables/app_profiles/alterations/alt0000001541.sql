-- Deploy: schemas/agentic_db_profiles_public/tables/app_profiles/alterations/alt0000001541
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_profiles_public/schema
-- requires: schemas/agentic_db_profiles_public/tables/app_profiles/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous


COMMENT ON TABLE agentic_db_profiles_public.app_profiles IS E'Named permission bundles (roles) that group multiple permissions into reusable profiles';

