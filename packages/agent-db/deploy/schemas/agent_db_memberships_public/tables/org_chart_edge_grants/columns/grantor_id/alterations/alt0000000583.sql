-- Deploy: schemas/agent_db_memberships_public/tables/org_chart_edge_grants/columns/grantor_id/alterations/alt0000000583
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_chart_edge_grants/columns/grantor_id/column


COMMENT ON COLUMN agent_db_memberships_public.org_chart_edge_grants.grantor_id IS 'User ID of the admin who performed this grant or revocation';

