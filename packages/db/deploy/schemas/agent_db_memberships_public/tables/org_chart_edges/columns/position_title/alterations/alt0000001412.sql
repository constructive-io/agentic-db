-- Deploy: schemas/agent_db_memberships_public/tables/org_chart_edges/columns/position_title/alterations/alt0000001412
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_chart_edges/columns/position_title/column


COMMENT ON COLUMN "agent_db_memberships_public".org_chart_edges.position_title IS 'Job title or role name for this position in the org chart';

