-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/tables/app_profiles/columns/is_default/alterations/alt0000000233
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/tables/app_profiles/columns/is_default/column


COMMENT ON COLUMN "agent-os-1773546821914-39f1cb9b-profiles-public".app_profiles.is_default IS 'The default profile is automatically assigned to new members when they join';

