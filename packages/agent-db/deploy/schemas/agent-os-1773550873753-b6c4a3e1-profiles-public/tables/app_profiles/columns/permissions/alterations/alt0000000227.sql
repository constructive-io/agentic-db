-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/tables/app_profiles/columns/permissions/alterations/alt0000000227
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/tables/app_profiles/columns/permissions/column


COMMENT ON COLUMN "agent-os-1773550873753-b6c4a3e1-profiles-public".app_profiles.permissions IS E'Pre-computed permission bitmask aggregating all permissions in this profile';

