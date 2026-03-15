-- Deploy: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_chart_edge_grants/columns/is_grant/alterations/alt0000002194
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_chart_edge_grants/table
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_chart_edge_grants/columns/is_grant/column



ALTER TABLE "agent-os-1773551593867-bac64076-memberships-public".org_chart_edge_grants 
    ALTER COLUMN is_grant SET DEFAULT true;

