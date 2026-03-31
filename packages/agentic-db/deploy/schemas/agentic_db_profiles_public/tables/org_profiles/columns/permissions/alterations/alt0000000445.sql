-- Deploy: schemas/agentic_db_profiles_public/tables/org_profiles/columns/permissions/alterations/alt0000000445
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_profiles_public/schema
-- requires: schemas/agentic_db_profiles_public/tables/org_profiles/columns/permissions/column


COMMENT ON COLUMN "agentic_db_profiles_public".org_profiles.permissions IS E'Pre-computed permission bitmask aggregating all permissions in this profile';

