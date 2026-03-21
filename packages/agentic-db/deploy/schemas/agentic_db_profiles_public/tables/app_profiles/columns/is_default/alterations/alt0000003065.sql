-- Deploy: schemas/agentic_db_profiles_public/tables/app_profiles/columns/is_default/alterations/alt0000003065
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_profiles_public/schema
-- requires: schemas/agentic_db_profiles_public/tables/app_profiles/columns/is_default/column


COMMENT ON COLUMN agentic_db_profiles_public.app_profiles.is_default IS 'The default profile is automatically assigned to new members when they join';

