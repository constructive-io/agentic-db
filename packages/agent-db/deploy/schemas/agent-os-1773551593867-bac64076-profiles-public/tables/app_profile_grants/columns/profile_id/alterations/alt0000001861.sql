-- Deploy: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/app_profile_grants/columns/profile_id/alterations/alt0000001861
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-profiles-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/app_profile_grants/columns/profile_id/column


COMMENT ON COLUMN "agent-os-1773551593867-bac64076-profiles-public".app_profile_grants.profile_id IS E'References the profile being assigned; NULL indicates the profile was removed';

