-- Deploy: schemas/agent_db_memberships_public/tables/org_chart_edges/columns/parent_id/alterations/alt0000003777
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_chart_edges/columns/parent_id/column


COMMENT ON COLUMN "agent_db_memberships_public".org_chart_edges.parent_id IS E'User ID of the manager; NULL indicates a top-level position with no direct report';

