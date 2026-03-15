-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/tables/app_profiles/columns/name/alterations/alt0000000220
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/tables/app_profiles/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/tables/app_profiles/columns/name/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-profiles-public".app_profiles 
  ALTER COLUMN name SET NOT NULL;

