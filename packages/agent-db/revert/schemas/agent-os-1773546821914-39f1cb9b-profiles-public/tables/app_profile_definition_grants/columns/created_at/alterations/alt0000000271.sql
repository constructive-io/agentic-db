-- Revert: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/tables/app_profile_definition_grants/columns/created_at/alterations/alt0000000271


ALTER TABLE "agent-os-1773546821914-39f1cb9b-profiles-public".app_profile_definition_grants 
  ALTER COLUMN created_at DROP DEFAULT;


