-- Deploy: schemas/agent_db_memberships_public/tables/org_chart_edge_grants/columns/child_id/alterations/alt0000002284
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_chart_edge_grants/columns/child_id/column


COMMENT ON COLUMN "agent_db_memberships_public".org_chart_edge_grants.child_id IS 'User ID of the subordinate being placed in the hierarchy';

