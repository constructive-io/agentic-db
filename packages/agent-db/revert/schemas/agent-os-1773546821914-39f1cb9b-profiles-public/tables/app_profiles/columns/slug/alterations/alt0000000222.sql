-- Revert: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/tables/app_profiles/columns/slug/alterations/alt0000000222


ALTER TABLE "agent-os-1773546821914-39f1cb9b-profiles-public".app_profiles 
  ALTER COLUMN slug DROP NOT NULL;


