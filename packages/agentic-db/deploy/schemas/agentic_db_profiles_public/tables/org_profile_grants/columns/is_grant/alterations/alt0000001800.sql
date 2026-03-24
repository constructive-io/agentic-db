-- Deploy: schemas/agentic_db_profiles_public/tables/org_profile_grants/columns/is_grant/alterations/alt0000001800
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_profiles_public/schema
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_profiles_public/tables/org_profile_grants/columns/is_grant/column


COMMENT ON COLUMN agentic_db_profiles_public.org_profile_grants.is_grant IS E'True to assign the profile, false to revoke it';

