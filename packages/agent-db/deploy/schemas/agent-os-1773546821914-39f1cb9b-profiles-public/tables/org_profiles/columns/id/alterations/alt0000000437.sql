-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/tables/org_profiles/columns/id/alterations/alt0000000437
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/tables/org_profiles/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/tables/org_profiles/columns/id/column



ALTER TABLE "agent-os-1773546821914-39f1cb9b-profiles-public".org_profiles 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

