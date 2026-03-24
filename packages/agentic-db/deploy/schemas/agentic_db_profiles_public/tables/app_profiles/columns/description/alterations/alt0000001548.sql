-- Deploy: schemas/agentic_db_profiles_public/tables/app_profiles/columns/description/alterations/alt0000001548
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_profiles_public/schema
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_profiles_public/tables/app_profiles/columns/description/column


COMMENT ON COLUMN agentic_db_profiles_public.app_profiles.description IS E'Human-readable description of this profile and its intended use';

