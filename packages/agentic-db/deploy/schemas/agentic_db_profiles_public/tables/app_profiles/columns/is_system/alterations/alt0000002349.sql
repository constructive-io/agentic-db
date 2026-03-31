-- Deploy: schemas/agentic_db_profiles_public/tables/app_profiles/columns/is_system/alterations/alt0000002349
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_profiles_public/schema
-- requires: schemas/agentic_db_profiles_public/tables/app_profiles/columns/is_system/column


COMMENT ON COLUMN agentic_db_profiles_public.app_profiles.is_system IS E'System profiles are built-in and cannot be deleted or renamed by users';

