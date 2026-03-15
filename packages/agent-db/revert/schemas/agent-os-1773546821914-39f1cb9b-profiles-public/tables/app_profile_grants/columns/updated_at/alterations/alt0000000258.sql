-- Revert: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/tables/app_profile_grants/columns/updated_at/alterations/alt0000000258


ALTER TABLE "agent-os-1773546821914-39f1cb9b-profiles-public".app_profile_grants 
  ALTER COLUMN updated_at DROP DEFAULT;


