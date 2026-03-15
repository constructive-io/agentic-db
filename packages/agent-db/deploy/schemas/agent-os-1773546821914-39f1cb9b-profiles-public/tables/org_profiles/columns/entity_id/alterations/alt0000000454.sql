-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/tables/org_profiles/columns/entity_id/alterations/alt0000000454
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/tables/org_profiles/columns/entity_id/column


COMMENT ON COLUMN "agent-os-1773546821914-39f1cb9b-profiles-public".org_profiles.entity_id IS E'Scopes this profile to a specific entity; NULL means it is a global profile';

