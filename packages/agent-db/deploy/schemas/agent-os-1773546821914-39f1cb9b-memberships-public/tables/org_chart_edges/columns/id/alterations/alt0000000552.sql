-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_chart_edges/columns/id/alterations/alt0000000552
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_chart_edges/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_chart_edges/columns/id/column



ALTER TABLE "agent-os-1773546821914-39f1cb9b-memberships-public".org_chart_edges 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

