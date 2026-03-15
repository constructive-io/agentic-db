-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/tables/app_profile_grants/columns/membership_id/alterations/alt0000000251
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/tables/app_profile_grants/columns/membership_id/column


COMMENT ON COLUMN "agent-os-1773546821914-39f1cb9b-profiles-public".app_profile_grants.membership_id IS 'References the membership that received or lost this profile';

