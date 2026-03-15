-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/tables/app_profile_definition_grants/columns/id/alterations/alt0000000261
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/tables/app_profile_definition_grants/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/tables/app_profile_definition_grants/columns/id/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-profiles-public".app_profile_definition_grants 
  ALTER COLUMN id SET NOT NULL;

