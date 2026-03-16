-- Deploy: schemas/agent_db_memberships_public/tables/org_chart_edge_grants/columns/position_title/alterations/alt0000001439
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_chart_edge_grants/columns/position_title/column


COMMENT ON COLUMN "agent_db_memberships_public".org_chart_edge_grants.position_title IS 'Job title or role name being assigned in this grant';

