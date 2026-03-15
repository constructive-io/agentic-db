-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_chart_edge_grants/columns/parent_id/alterations/alt0000000581
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_chart_edge_grants/columns/parent_id/column


COMMENT ON COLUMN "agent-os-1773546821914-39f1cb9b-memberships-public".org_chart_edge_grants.parent_id IS E'User ID of the manager being assigned; NULL for top-level positions';

