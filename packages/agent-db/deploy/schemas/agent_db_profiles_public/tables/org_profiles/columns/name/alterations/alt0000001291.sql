-- Deploy: schemas/agent_db_profiles_public/tables/org_profiles/columns/name/alterations/alt0000001291
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_profiles_public/schema
-- requires: schemas/agent_db_profiles_public/tables/org_profiles/columns/name/column


COMMENT ON COLUMN "agent_db_profiles_public".org_profiles.name IS E'Display name for this profile (e.g. Admin, Editor, Viewer)';

