-- Revert: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/tables/org_profile_grants/columns/created_at/alterations/alt0000000477


ALTER TABLE "agent-os-1773546821914-39f1cb9b-profiles-public".org_profile_grants 
  ALTER COLUMN created_at DROP DEFAULT;


