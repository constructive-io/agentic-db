-- Deploy: schemas/agent_db_memberships_public/tables/org_chart_edges/columns/position_level/alterations/alt0000002265
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_chart_edges/columns/position_level/column


COMMENT ON COLUMN "agent_db_memberships_public".org_chart_edges.position_level IS E'Numeric seniority level for this position (higher = more senior)';

