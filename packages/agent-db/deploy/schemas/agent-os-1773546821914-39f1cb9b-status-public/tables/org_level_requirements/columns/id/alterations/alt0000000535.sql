-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-status-public/tables/org_level_requirements/columns/id/alterations/alt0000000535
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-status-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-status-public/tables/org_level_requirements/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-status-public/tables/org_level_requirements/columns/id/column



ALTER TABLE "agent-os-1773546821914-39f1cb9b-status-public".org_level_requirements 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

