-- Revert: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/tables/app_profile_grants/columns/is_grant/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-profiles-public".app_profile_grants 
  DROP COLUMN is_grant RESTRICT;


