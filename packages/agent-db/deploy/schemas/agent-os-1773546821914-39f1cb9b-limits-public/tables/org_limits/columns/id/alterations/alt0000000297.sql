-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-limits-public/tables/org_limits/columns/id/alterations/alt0000000297
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-limits-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-limits-public/tables/org_limits/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-limits-public/tables/org_limits/columns/id/column



ALTER TABLE "agent-os-1773546821914-39f1cb9b-limits-public".org_limits 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

