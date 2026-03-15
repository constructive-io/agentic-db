-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-status-public/tables/org_achievements/columns/id/alterations/alt0000000510
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-status-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-status-public/tables/org_achievements/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-status-public/tables/org_achievements/columns/id/column



ALTER TABLE "agent-os-1773546821914-39f1cb9b-status-public".org_achievements 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

