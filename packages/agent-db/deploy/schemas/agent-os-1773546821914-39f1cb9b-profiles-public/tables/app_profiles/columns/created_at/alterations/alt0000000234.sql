-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/tables/app_profiles/columns/created_at/alterations/alt0000000234
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/tables/app_profiles/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/tables/app_profiles/columns/created_at/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-profiles-public".app_profiles 
  ALTER COLUMN created_at SET DEFAULT now();

