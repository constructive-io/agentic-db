-- Deploy: schemas/agentic_db_memberships_public/tables/org_chart_edge_grants/columns/child_id/alterations/alt0000003412
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/org_chart_edge_grants/columns/child_id/column


COMMENT ON COLUMN agentic_db_memberships_public.org_chart_edge_grants.child_id IS 'User ID of the subordinate being placed in the hierarchy';

