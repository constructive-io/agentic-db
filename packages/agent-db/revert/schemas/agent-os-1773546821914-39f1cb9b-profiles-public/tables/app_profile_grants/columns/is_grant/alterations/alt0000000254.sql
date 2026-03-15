-- Revert: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/tables/app_profile_grants/columns/is_grant/alterations/alt0000000254


ALTER TABLE "agent-os-1773546821914-39f1cb9b-profiles-public".app_profile_grants 
  ALTER COLUMN is_grant DROP NOT NULL;


