-- Deploy: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_chart_edge_grants/columns/is_grant/alterations/alt0000002195
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_chart_edge_grants/columns/is_grant/column


COMMENT ON COLUMN "agent-os-1773551593867-bac64076-memberships-public".org_chart_edge_grants.is_grant IS E'TRUE to add/update the edge, FALSE to remove it';

