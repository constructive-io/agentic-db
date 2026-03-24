-- Deploy: schemas/agentic_db_profiles_public/tables/org_profiles/columns/is_default/alterations/alt0000001775
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_profiles_public/schema
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_profiles_public/tables/org_profiles/columns/is_default/column


COMMENT ON COLUMN agentic_db_profiles_public.org_profiles.is_default IS 'The default profile is automatically assigned to new members when they join';

