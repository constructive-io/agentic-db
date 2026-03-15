-- Deploy: schemas/agent_db_memberships_public/tables/org_chart_edge_grants/columns/parent_id/alterations/alt0000000581
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_chart_edge_grants/columns/parent_id/column


COMMENT ON COLUMN agent_db_memberships_public.org_chart_edge_grants.parent_id IS E'User ID of the manager being assigned; NULL for top-level positions';

