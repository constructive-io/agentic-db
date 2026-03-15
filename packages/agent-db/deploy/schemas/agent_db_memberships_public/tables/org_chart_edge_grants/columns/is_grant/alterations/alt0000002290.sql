-- Deploy: schemas/agent_db_memberships_public/tables/org_chart_edge_grants/columns/is_grant/alterations/alt0000002290
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_chart_edge_grants/columns/is_grant/column


COMMENT ON COLUMN "agent_db_memberships_public".org_chart_edge_grants.is_grant IS E'TRUE to add/update the edge, FALSE to remove it';

