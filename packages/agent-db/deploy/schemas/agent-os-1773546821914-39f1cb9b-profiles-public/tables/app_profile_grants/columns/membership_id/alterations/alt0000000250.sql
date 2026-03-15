-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/tables/app_profile_grants/columns/membership_id/alterations/alt0000000250
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/tables/app_profile_grants/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/tables/app_profile_grants/columns/membership_id/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-profiles-public".app_profile_grants 
  ALTER COLUMN membership_id SET NOT NULL;

