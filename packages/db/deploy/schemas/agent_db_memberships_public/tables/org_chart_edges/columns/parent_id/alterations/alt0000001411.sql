-- Deploy: schemas/agent_db_memberships_public/tables/org_chart_edges/columns/parent_id/alterations/alt0000001411
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_chart_edges/columns/parent_id/column


COMMENT ON COLUMN "agent_db_memberships_public".org_chart_edges.parent_id IS E'User ID of the manager; NULL indicates a top-level position with no direct report';

