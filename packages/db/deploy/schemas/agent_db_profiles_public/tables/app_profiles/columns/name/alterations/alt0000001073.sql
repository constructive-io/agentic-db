-- Deploy: schemas/agent_db_profiles_public/tables/app_profiles/columns/name/alterations/alt0000001073
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_profiles_public/schema
-- requires: schemas/agent_db_profiles_public/tables/app_profiles/columns/name/column


COMMENT ON COLUMN "agent_db_profiles_public".app_profiles.name IS E'Display name for this profile (e.g. Admin, Editor, Viewer)';

