-- Deploy: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/org_profile_definition_grants/columns/is_grant/alterations/alt0000002099
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-profiles-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/org_profile_definition_grants/columns/is_grant/column


COMMENT ON COLUMN "agent-os-1773551593867-bac64076-profiles-public".org_profile_definition_grants.is_grant IS E'True to add the permission to the profile, false to remove it';

