-- Deploy: schemas/agent_db_memberships_public/tables/org_chart_edges/columns/child_id/alterations/alt0000003776
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_chart_edges/columns/child_id/column


COMMENT ON COLUMN "agent_db_memberships_public".org_chart_edges.child_id IS E'User ID of the subordinate (employee) in this reporting relationship';

