-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/tables/app_profile_grants/columns/membership_id/alterations/alt0000000250
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/tables/app_profile_grants/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/tables/app_profile_grants/columns/membership_id/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-profiles-public".app_profile_grants 
  ALTER COLUMN membership_id SET NOT NULL;

