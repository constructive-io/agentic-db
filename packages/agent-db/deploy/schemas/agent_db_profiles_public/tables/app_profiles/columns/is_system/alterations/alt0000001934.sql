-- Deploy: schemas/agent_db_profiles_public/tables/app_profiles/columns/is_system/alterations/alt0000001934
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_profiles_public/schema
-- requires: schemas/agent_db_profiles_public/tables/app_profiles/columns/is_system/column


COMMENT ON COLUMN "agent_db_profiles_public".app_profiles.is_system IS E'System profiles are built-in and cannot be deleted or renamed by users';

