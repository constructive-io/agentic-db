-- Deploy: schemas/agentic_db_memberships_public/tables/org_chart_edges/columns/child_id/alterations/alt0000003390
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/org_chart_edges/columns/child_id/column


COMMENT ON COLUMN agentic_db_memberships_public.org_chart_edges.child_id IS E'User ID of the subordinate (employee) in this reporting relationship';

