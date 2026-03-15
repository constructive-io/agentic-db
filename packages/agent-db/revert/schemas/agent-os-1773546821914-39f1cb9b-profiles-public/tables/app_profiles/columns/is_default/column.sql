-- Revert: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/tables/app_profiles/columns/is_default/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-profiles-public".app_profiles 
  DROP COLUMN is_default RESTRICT;


