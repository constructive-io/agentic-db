-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/tables/org_profiles/columns/slug/alterations/alt0000000440
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/tables/org_profiles/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/tables/org_profiles/columns/slug/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-profiles-public".org_profiles 
  ALTER COLUMN slug SET NOT NULL;

