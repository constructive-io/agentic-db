-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/tables/app_profile_definition_grants/columns/is_grant/alterations/alt0000000270
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/tables/app_profile_definition_grants/columns/is_grant/column


COMMENT ON COLUMN "agent-os-1773550873753-b6c4a3e1-profiles-public".app_profile_definition_grants.is_grant IS E'True to add the permission to the profile, false to remove it';

