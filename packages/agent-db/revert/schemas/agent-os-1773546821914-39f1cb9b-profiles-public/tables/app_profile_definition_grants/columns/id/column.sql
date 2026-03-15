-- Revert: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/tables/app_profile_definition_grants/columns/id/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-profiles-public".app_profile_definition_grants 
  DROP COLUMN id RESTRICT;


