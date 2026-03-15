-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-status-public/tables/org_steps/columns/id/alterations/alt0000000496
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-status-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-status-public/tables/org_steps/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-status-public/tables/org_steps/columns/id/column



ALTER TABLE "agent-os-1773546821914-39f1cb9b-status-public".org_steps 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

