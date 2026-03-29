-- Deploy: schemas/agentic_db_memberships_public/tables/org_chart_edges/columns/parent_id/alterations/alt0000010051
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/org_chart_edges/columns/parent_id/column


COMMENT ON COLUMN agentic_db_memberships_public.org_chart_edges.parent_id IS E'User ID of the manager; NULL indicates a top-level position with no direct report';

