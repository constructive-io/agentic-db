-- Deploy: schemas/agentic_db_memberships_public/tables/org_chart_edge_grants/columns/parent_id/alterations/alt0000003413
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/org_chart_edge_grants/columns/parent_id/column


COMMENT ON COLUMN agentic_db_memberships_public.org_chart_edge_grants.parent_id IS E'User ID of the manager being assigned; NULL for top-level positions';

