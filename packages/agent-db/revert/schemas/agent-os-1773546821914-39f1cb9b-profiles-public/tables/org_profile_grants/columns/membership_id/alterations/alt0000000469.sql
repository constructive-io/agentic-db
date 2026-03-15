-- Revert: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/tables/org_profile_grants/columns/membership_id/alterations/alt0000000469


ALTER TABLE "agent-os-1773546821914-39f1cb9b-profiles-public".org_profile_grants 
  ALTER COLUMN membership_id DROP NOT NULL;


