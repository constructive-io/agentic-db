-- Revert: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/tables/app_profiles/columns/updated_at/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-profiles-public".app_profiles 
  DROP COLUMN updated_at RESTRICT;


