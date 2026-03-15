-- Deploy: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/org_profiles/columns/entity_id/alterations/alt0000002063
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-profiles-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/org_profiles/columns/entity_id/column


COMMENT ON COLUMN "agent-os-1773551593867-bac64076-profiles-public".org_profiles.entity_id IS E'Scopes this profile to a specific entity; NULL means it is a global profile';

