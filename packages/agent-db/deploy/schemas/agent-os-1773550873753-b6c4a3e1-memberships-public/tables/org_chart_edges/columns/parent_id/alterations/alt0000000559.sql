-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/org_chart_edges/columns/parent_id/alterations/alt0000000559
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/org_chart_edges/columns/parent_id/column


COMMENT ON COLUMN "agent-os-1773550873753-b6c4a3e1-memberships-public".org_chart_edges.parent_id IS E'User ID of the manager; NULL indicates a top-level position with no direct report';

