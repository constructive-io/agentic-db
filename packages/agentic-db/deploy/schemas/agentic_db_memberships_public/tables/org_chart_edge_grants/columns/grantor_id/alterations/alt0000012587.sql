-- Deploy: schemas/agentic_db_memberships_public/tables/org_chart_edge_grants/columns/grantor_id/alterations/alt0000012587
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/org_chart_edge_grants/columns/grantor_id/column


COMMENT ON COLUMN agentic_db_memberships_public.org_chart_edge_grants.grantor_id IS E'User ID of the admin who performed this grant or revocation; NULL if grantor was deleted';

