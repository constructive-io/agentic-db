-- Revert: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/tables/app_profile_grants/columns/profile_id/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-profiles-public".app_profile_grants 
  DROP COLUMN profile_id RESTRICT;


