-- Deploy: schemas/agentic_db_profiles_public/tables/org_profiles/columns/is_system/alterations/alt0000005122
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_profiles_public/schema
-- requires: schemas/agentic_db_profiles_public/tables/org_profiles/columns/is_system/column


COMMENT ON COLUMN agentic_db_profiles_public.org_profiles.is_system IS E'System profiles are built-in and cannot be deleted or renamed by users';

