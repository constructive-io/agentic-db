-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/tables/org_profile_grants/columns/membership_id/alterations/alt0000000469
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/tables/org_profile_grants/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/tables/org_profile_grants/columns/membership_id/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-profiles-public".org_profile_grants 
  ALTER COLUMN membership_id SET NOT NULL;

