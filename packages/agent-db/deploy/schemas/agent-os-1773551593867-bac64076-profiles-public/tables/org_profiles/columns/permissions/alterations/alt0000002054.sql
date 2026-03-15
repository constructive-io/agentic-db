-- Deploy: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/org_profiles/columns/permissions/alterations/alt0000002054
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-profiles-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/org_profiles/columns/permissions/column


COMMENT ON COLUMN "agent-os-1773551593867-bac64076-profiles-public".org_profiles.permissions IS E'Pre-computed permission bitmask aggregating all permissions in this profile';

